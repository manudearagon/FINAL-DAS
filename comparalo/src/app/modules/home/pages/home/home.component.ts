import { Component, OnInit } from '@angular/core';
import { LocationService } from '../../../../services/location.service';
import { ProductService } from '../../../../services/product.service';
import { Router } from '@angular/router';

@Component({
  selector: 'page-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  showLocationModal = false;
  hasLocation = false;
  searchQuery = '';
  suggestedSearches: string[] = [];

  constructor(
    private locationService: LocationService,
    private productService: ProductService,
    private router: Router
  ) { }

  ngOnInit() {
    this.locationService.getCurrentLocation().subscribe((location) => {
      this.showLocationModal = !location;
      this.hasLocation = !!location;
    });
    this.suggestedSearches = this.productService.getSuggestedSearches();
  }

  onSearch() {
    if (this.searchQuery.trim()) {
      this.productService.searchProducts(this.searchQuery);
      this.router.navigate(['/products']);
    }
  }

  onSuggestionClick(suggestion: string) {
    this.searchQuery = suggestion;
    this.onSearch();
  }
}
