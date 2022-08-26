import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PunapprovalComponent } from './punapproval.component';

describe('PunapprovalComponent', () => {
  let component: PunapprovalComponent;
  let fixture: ComponentFixture<PunapprovalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PunapprovalComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PunapprovalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
