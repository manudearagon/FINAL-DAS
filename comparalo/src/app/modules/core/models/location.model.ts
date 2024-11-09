export interface ILocation {
  province: string;
  city: string;
}

export interface Province {
  id: string;
  name: string;
  cities: string[];
}