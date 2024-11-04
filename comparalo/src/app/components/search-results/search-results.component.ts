import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NzCardModule } from 'ng-zorro-antd/card';
import { NzGridModule } from 'ng-zorro-antd/grid';
import { NzButtonModule } from 'ng-zorro-antd/button';
import { NzIconModule } from 'ng-zorro-antd/icon';
import { Product } from '../../models/product.model';
import { ProductService } from '../../services/product.service';
import { ProductCardComponent } from '../product-card/product-card.component';
import { SearchFiltersComponent } from '../search-filters/search-filters.component';

@Component({
  selector: 'app-search-results',
  standalone: true,
  imports: [
    CommonModule,
    NzGridModule,
    NzCardModule,
    NzButtonModule,
    NzIconModule,
    ProductCardComponent,
    SearchFiltersComponent,
  ],
  template: `
    <div class="results-container">
      <app-search-filters class="filters"></app-search-filters>
      <div class="products-grid">
        <app-product-card
          *ngFor="let product of products"
          [product]="product"
          (addToCart)="onAddToCart($event)"
        ></app-product-card>
      </div>
    </div>
  `,
  styles: [
    `
    .results-container {
      display: flex;
      padding: 1rem;
      gap: 2rem;
    }
    .filters {
      width: 250px;
      flex-shrink: 0;
    }
    .products-grid {
      flex: 1;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 1rem;
    }
  `,
  ],
})
export class SearchResultsComponent implements OnInit {
  products: Product[] = [];

  constructor(private productService: ProductService) { }

  ngOnInit() {
    this.productService.getCurrentSearchResults().subscribe((products) => {
      this.products = products;
    });
  }

  onAddToCart(product: Product) {
    // TODO: Implement cart functionality
    console.log('Adding to cart:', product);
  }
}
