import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable, of } from 'rxjs';
import { Product } from '../models/product.model';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  private currentSearchResults = new BehaviorSubject<Product[]>([]);
  
  private suggestedSearches = [
    'Aceite de oliva',
    'Leche',
    'Pan',
    'Arroz',
    'Yerba mate'
  ];

  // Simulated product data
  private mockProducts: Product[] = [
    {
      id: '1',
      name: 'Aceite de Oliva Extra Virgen',
      description: 'Aceite de oliva extra virgen 500ml',
      image: 'https://placehold.co/300x200',
      prices: [
        { store: 'Supermercado A', price: 1500 },
        { store: 'Supermercado B', price: 1600 },
        { store: 'Supermercado C', price: 1450 }
      ]
    },
    {
      id: '2',
      name: 'Leche Entera',
      description: 'Leche entera 1L',
      image: 'https://placehold.co/300x200',
      prices: [
        { store: 'Supermercado A', price: 400 },
        { store: 'Supermercado B', price: 380 },
        { store: 'Supermercado C', price: 420 }
      ]
    }
  ];

  getSuggestedSearches(): string[] {
    return this.suggestedSearches;
  }

  searchProducts(query: string): void {
    // Simulate API call
    const results = this.mockProducts.filter(product => 
      product.name.toLowerCase().includes(query.toLowerCase())
    );
    this.currentSearchResults.next(results);
  }

  getCurrentSearchResults(): Observable<Product[]> {
    return this.currentSearchResults.asObservable();
  }
}