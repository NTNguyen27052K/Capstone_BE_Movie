import { Module } from '@nestjs/common';
import { DatVeService } from './dat_ve.service';
import { DatVeController } from './dat_ve.controller';

@Module({
  controllers: [DatVeController],
  providers: [DatVeService],
})
export class DatVeModule {}
