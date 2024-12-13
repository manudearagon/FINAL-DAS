import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { NzInputModule } from 'ng-zorro-antd/input';
import { NzIconModule } from 'ng-zorro-antd/icon';
import { NzBadgeModule } from 'ng-zorro-antd/badge';
import { LocationService } from '../../../../services/location.service';
import { ProductService } from '../../../../services/product.service';
import { Observable } from 'rxjs';
import {
  ILocation

} from '../../models/location.model';
import { RouterModule } from '@angular/router';
import { CartModule } from '../../../cart/cart.module';
import { NzDrawerModule, NzDrawerService } from 'ng-zorro-antd/drawer';
import { CartDialogComponent } from '../../../cart/dialog/cart-dialog/cart-dialog.component';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    NzInputModule,
    NzIconModule,
    NzBadgeModule,
    RouterModule,
    CartModule,
    NzDrawerModule
  ],
  template: `
    <div class="navbar">
      <div class="logo" [routerLink]="['/home']">Comparalo</div>
      <ng-container *ngIf="showSearchBar">
        <div class="search">
          <nz-input-group [nzSuffix]="suffixIconSearch">
            <input 
              type="text" 
              nz-input 
              [(ngModel)]="searchQuery"
              (keyup.enter)="onSearch()"
              placeholder="Buscar productos..." 
            />
          </nz-input-group>
          <ng-template #suffixIconSearch>
            <span nz-icon nzType="search" (click)="onSearch()"></span>
          </ng-template>
        </div>
      </ng-container>
      <div class="location" *ngIf="location$ | async as location">
        <span nz-icon nzType="environment"></span>
        {{ location.city }}, {{ location.province }}
      </div>
      <div class="cart" (click)="openCart()">
        <nz-badge [nzCount]="0">
          <span nz-icon nzType="shopping-cart" style="font-size: 24px;"></span>
        </nz-badge>
      </div>
    </div>
  `,
  styles: [
    `
    .navbar {
      display: flex;
      align-items: center;
      padding: 1rem;
      background: white;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    .logo {
      font-size: 1.5rem;
      font-weight: bold;
      margin-right: 2rem;
      cursor: pointer;
    }
    .search {
      flex: 1;
      max-width: 600px;
      margin: 0 2rem;
    }
    .location {
      margin-left: auto;
      margin-right: 2rem;
    }
    .cart {
      cursor: pointer;
    }
  `,
  ],
})
export class NavbarComponent {
  @Input() showSearchBar = true;

  location$: Observable<ILocation | null>;
  searchQuery = '';

  constructor(
    private locationService: LocationService,
    private productService: ProductService,
    private drawerService: NzDrawerService
  ) {
    this.location$ = this.locationService.getCurrentLocation();
  }

  onSearch() {
    if (this.searchQuery.trim()) {
      this.productService.searchProducts(this.searchQuery);
    }
  }

  openCart() {
    this.drawerService.create({
      nzTitle: 'Carrito de compras',
      nzContent: CartDialogComponent,
      nzPlacement: 'right',
      nzWidth: 400,
    });
  }
}
