import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MovieCartComponent } from './movie-cart.component';

describe('MovieCartComponent', () => {
  let component: MovieCartComponent;
  let fixture: ComponentFixture<MovieCartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MovieCartComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MovieCartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
