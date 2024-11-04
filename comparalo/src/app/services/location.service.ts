import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { ILocation, Province } from '../models/location.model';

@Injectable({
  providedIn: 'root'
})
export class LocationService {
  private currentLocation = new BehaviorSubject<ILocation | null>(null);

  // Simulated data - In a real app, this would come from an API
  private provinces: Province[] = [
    {
      id: 'buenos-aires',
      name: 'Buenos Aires',
      cities: ['La Plata', 'Mar del Plata', 'Bahía Blanca']
    },
    {
      id: 'cordoba',
      name: 'Córdoba',
      cities: ['Córdoba', 'Villa María', 'Río Cuarto']
    }
  ];

  getProvinces(): Province[] {
    return this.provinces;
  }

  setLocation(location: ILocation) {
    this.currentLocation.next(location);
    localStorage.setItem('userLocation', JSON.stringify(location));
  }

  getCurrentLocation(): Observable<ILocation | null> {
    const savedLocation = localStorage.getItem('userLocation');
    if (savedLocation && !this.currentLocation.value) {
      this.currentLocation.next(JSON.parse(savedLocation));
    }
    return this.currentLocation.asObservable();
  }
}