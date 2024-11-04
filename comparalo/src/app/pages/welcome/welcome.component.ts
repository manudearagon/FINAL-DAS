import { Component, OnInit } from '@angular/core';
import { LocationService } from '../../services/location.service';
import { ProductService } from '../../services/product.service';
import { NavbarComponent } from '../../components/navbar/navbar.component';
import { LocationModalComponent } from '../../components/location-modal/location-modal.component';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { SearchResultsComponent } from '../../components/search-results/search-results.component';

@Component({
  selector: 'app-welcome',
  standalone: true,
  imports: [NavbarComponent, LocationModalComponent, CommonModule, FormsModule, SearchResultsComponent],
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.scss']
})
export class WelcomeComponent implements OnInit {
  showLocationModal = false;
  hasLocation = false;
  searchQuery = '';
  suggestedSearches: string[] = [];

  constructor(
    private locationService: LocationService,
    private productService: ProductService
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
    }
  }

  onSuggestionClick(suggestion: string) {
    this.searchQuery = suggestion;
    this.onSearch();
  }
}
