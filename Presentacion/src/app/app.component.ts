import { Component } from '@angular/core';
import { TestService } from './test.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Presentacion';
  
  constructor(private Variable:TestService){
    
  }
  public ngOnInit(){
    console.log("hola")
    this.Variable.test().subscribe(
    sucess=>{ console.log (sucess)}, 
    error=>{}
    )
  }
}
