import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PunsubmissionComponent } from './punsubmission.component';

describe('PunsubmissionComponent', () => {
  let component: PunsubmissionComponent;
  let fixture: ComponentFixture<PunsubmissionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PunsubmissionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PunsubmissionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
