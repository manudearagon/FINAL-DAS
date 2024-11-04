import { Component, Input, Output, EventEmitter } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NzCardModule } from 'ng-zorro-antd/card';
import { NzButtonModule } from 'ng-zorro-antd/button';
import { NzIconModule } from 'ng-zorro-antd/icon';
import { Product } from '../../models/product.model';

@Component({
  selector: 'app-product-card',
  standalone: true,
  imports: [CommonModule, NzCardModule, NzButtonModule, NzIconModule],
  template: `
    <nz-card [nzCover]="coverTemplate" [nzActions]="[actionTemplate]">
      <ng-template #coverTemplate>
        <img [src]="product.image" [alt]="product.name" />
      </ng-template>
      <ng-template #actionTemplate>
        <button nz-button nzType="primary" (click)="onAddToCart()">
          <span nz-icon nzType="shopping-cart"></span>
          Agregar al carrito
        </button>
      </ng-template>
      <h3 class="product-name">{{ product.name }}</h3>
      <p class="product-description">{{ product.description }}</p>
      <div class="prices">
        <div class="best-price">
          <span class="label">Mejor precio:</span>
          <span class="price">{{ getBestPriceString() }}</span>
        </div>
        <div class="store">{{ getBestPriceStore() }}</div>
      </div>
    </nz-card>
  `,
  styles: [
    `
    :host {
      display: block;
    }
    .product-name {
      font-size: 1.1rem;
      margin-bottom: 0.5rem;
    }
    .product-description {
      color: #666;
      margin-bottom: 1rem;
    }
    .prices {
      margin-top: 1rem;
    }
    .best-price {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 0.25rem;
    }
    .label {
      color: #666;
    }
    .price {
      font-size: 1.2rem;
      font-weight: bold;
      color: #1890ff;
    }
    .store {
      font-size: 0.9rem;
      color: #666;
      text-align: right;
    }
  `,
  ],
})
export class ProductCardComponent {
  @Input() product!: Product;
  @Output() addToCart = new EventEmitter<Product>();

  getBestPrice(): number {
    return Math.min(...this.product.prices.map((p) => p.price));
  }

  getBestPriceString() {
    return `$${this.getBestPrice().toString()}`;
  }

  getBestPriceStore(): string {
    const bestPrice = this.getBestPrice();
    return this.product.prices.find((p) => p.price === bestPrice)?.store || '';
  }

  onAddToCart() {
    this.addToCart.emit(this.product);
  }
}
