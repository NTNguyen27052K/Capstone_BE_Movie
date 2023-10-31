import { Module } from '@nestjs/common';
import { LichChieuService } from './lich_chieu.service';
import { LichChieuController } from './lich_chieu.controller';

@Module({
  controllers: [LichChieuController],
  providers: [LichChieuService],
})
export class LichChieuModule {}
