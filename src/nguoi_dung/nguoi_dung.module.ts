import { Module } from '@nestjs/common';
import { NguoiDungService } from './nguoi_dung.service';
import { NguoiDungController } from './nguoi_dung.controller';
import { PrismaService } from 'prisma/prisma.service';

@Module({
  controllers: [NguoiDungController],
  providers: [NguoiDungService, PrismaService],
})
export class NguoiDungModule {}
