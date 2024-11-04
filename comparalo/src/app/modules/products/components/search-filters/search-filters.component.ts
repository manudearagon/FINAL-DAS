import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { NzCardModule } from 'ng-zorro-antd/card';
import { NzCheckboxModule } from 'ng-zorro-antd/checkbox';
import { NzSliderModule } from 'ng-zorro-antd/slider';

@Component({
  selector: 'app-search-filters',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    NzCardModule,
    NzCheckboxModule,
    NzSliderModule,
  ],
  template: `
    <nz-card nzTitle="Filtros">
      <div class="filter-section">
        <h4>Supermercados</h4>
        <label nz-checkbox>Supermercado A</label>
        <label nz-checkbox>Supermercado B</label>
        <label nz-checkbox>Supermercado C</label>
      </div>
      
      <div class="filter-section">
        <h4>Rango de precios</h4>
        <nz-slider [nzRange]="true" [nzMin]="0" [nzMax]="10000"></nz-slider>
      </div>
    </nz-card>
  `,
  styles: [
    `
    .filter-section {
      margin-bottom: 1.5rem;
    }
    .filter-section:last-child {
      margin-bottom: 0;
    }
    h4 {
      margin-bottom: 1rem;
    }
    label {
      display: block;
      margin-bottom: 0.5rem;
    }
  `,
  ],
})
export class SearchFiltersComponent {}
