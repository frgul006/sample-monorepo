import { async, TestBed } from '@angular/core/testing';
import { Team1SampleLogicModule } from './team1-sample-logic.module';

describe('Team1SampleLogicModule', () => {
  beforeEach(async(() => {
    TestBed.configureTestingModule({
      imports: [Team1SampleLogicModule]
    }).compileComponents();
  }));

  it('should create', () => {
    expect(Team1SampleLogicModule).toBeDefined();
  });
});
