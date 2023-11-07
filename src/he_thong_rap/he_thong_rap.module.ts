import { Module } from '@nestjs/common';
import { HeThongRapService } from './he_thong_rap.service';
import { HeThongRapController } from './he_thong_rap.controller';
import { PrismaService } from 'prisma/prisma.service';

@Module({
  controllers: [HeThongRapController],
  providers: [HeThongRapService, PrismaService],
})
export class HeThongRapModule {}
