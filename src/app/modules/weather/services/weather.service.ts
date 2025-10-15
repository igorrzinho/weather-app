import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})

export class WeatherService {
  private apiKey = "9aef10806faa9e041ac7a1206e39976c"
  constructor(private http: HttpClient) { }

  getWeatherDatas(cityName: string): Observable<any>{
    return this.http.get(`https://api.openweathermap.org/data/2.5/weather?q=${cityName}&units=metric&mode=json&appid=${this.apiKey}`,
      {}
    )
  }
}
