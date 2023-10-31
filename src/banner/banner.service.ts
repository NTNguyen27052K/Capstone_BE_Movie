import { Injectable } from '@nestjs/common';
import { CreateBannerDto } from './dto/create-banner.dto';
import { UpdateBannerDto } from './dto/update-banner.dto';
import { PrismaClient } from '@prisma/client';

@Injectable()
export class BannerService {
  constructor() {}

  model = new PrismaClient();

  layDanhSachBanner() {
    return this.model.banner.findMany();
  }
  layDanhSachPhim() {
    return this.model.phim.findMany();
  }
  create(createBannerDto: CreateBannerDto) {
    return 'This action adds a new banner';
  }

  findOne(id: number) {
    return `This action returns a #${id} banner`;
  }

  update(id: number, updateBannerDto: UpdateBannerDto) {
    return `This action updates a #${id} banner`;
  }

  remove(id: number) {
    return `This action removes a #${id} banner`;
  }
}
