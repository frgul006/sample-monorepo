import { async, TestBed } from '@angular/core/testing';
import { SharedSampleUiModule } from './shared-sample-ui.module';

describe('SharedSampleUiModule', () => {
  beforeEach(async(() => {
    TestBed.configureTestingModule({
      imports: [SharedSampleUiModule]
    }).compileComponents();
  }));

  it('should create', () => {
    expect(SharedSampleUiModule).toBeDefined();
  });
});
