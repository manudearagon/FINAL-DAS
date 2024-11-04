import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { NzModalModule } from 'ng-zorro-antd/modal';
import { NzSelectModule } from 'ng-zorro-antd/select';
import { NzButtonModule } from 'ng-zorro-antd/button';
import { LocationService } from '../../services/location.service';
import { Province } from '../../models/location.model';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-location-modal',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    NzModalModule,
    NzSelectModule,
    NzButtonModule,
  ],
  template: `
    <nz-modal
      [(nzVisible)]="isVisible"
      [nzTitle]="'Selecciona tu ubicación'"
      [nzClosable]="false"
      [nzMaskClosable]="false"
      [nzFooter]="null"
    >
      <div *nzModalContent>
        <nz-select
          [(ngModel)]="selectedProvince"
          (ngModelChange)="onProvinceChange($event)"
          style="width: 100%; margin-bottom: 16px;"
          nzPlaceHolder="Selecciona una provincia"
        >
          <nz-option
            *ngFor="let province of provinces"
            [nzValue]="province.id"
            [nzLabel]="province.name"
          ></nz-option>
        </nz-select>

        <nz-select
          [(ngModel)]="selectedCity"
          style="width: 100%; margin-bottom: 16px;"
          nzPlaceHolder="Selecciona una ciudad"
          [nzDisabled]="!selectedProvince"
        >
          <nz-option
            *ngFor="let city of availableCities"
            [nzValue]="city"
            [nzLabel]="city"
          ></nz-option>
        </nz-select>

        <button
          nz-button
          nzType="primary"
          [disabled]="!selectedProvince || !selectedCity"
          (click)="confirmLocation()"
          style="width: 100%;"
        >
          Confirmar ubicación
        </button>
      </div>
    </nz-modal>
  `,
})
export class LocationModalComponent implements OnInit {
  isVisible = true;
  provinces: Province[] = [];
  selectedProvince: string = '';
  selectedCity: string = '';
  availableCities: string[] = [];

  constructor(private locationService: LocationService) { }

  ngOnInit() {
    this.provinces = this.locationService.getProvinces();
  }

  onProvinceChange(provinceId: string) {
    const province = this.provinces.find((p) => p.id === provinceId);
    this.availableCities = province ? province.cities : [];
    this.selectedCity = '';
  }

  confirmLocation() {
    const province = this.provinces.find((p) => p.id === this.selectedProvince);
    if (province && this.selectedCity) {
      this.locationService.setLocation({
        province: province.name,
        city: this.selectedCity,
      });
      this.isVisible = false;
    }
  }
}
