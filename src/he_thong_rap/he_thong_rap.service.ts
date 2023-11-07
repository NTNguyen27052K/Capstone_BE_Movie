import { Injectable } from '@nestjs/common';
import { CreateHeThongRapDto } from './dto/create-he_thong_rap.dto';
import { UpdateHeThongRapDto } from './dto/update-he_thong_rap.dto';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class HeThongRapService {
  constructor(private prisma: PrismaService) {}
  layThongTinHeThongRap() {
    return this.prisma.he_thong_rap.findMany();
  }

  findOne(id: number) {
    return `This action returns a #${id} heThongRap`;
  }

  update(id: number, updateHeThongRapDto: UpdateHeThongRapDto) {
    return `This action updates a #${id} heThongRap`;
  }

  remove(id: number) {
    return `This action removes a #${id} heThongRap`;
  }
}
