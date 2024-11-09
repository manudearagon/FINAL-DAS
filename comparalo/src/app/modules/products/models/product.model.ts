export interface Product {
  id: string;
  name: string;
  description: string;
  image: string;
  prices: {
    store: string;
    price: number;
  }[];
}