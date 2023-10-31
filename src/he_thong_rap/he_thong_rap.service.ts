import { Injectable } from '@nestjs/common';
import { CreateHeThongRapDto } from './dto/create-he_thong_rap.dto';
import { UpdateHeThongRapDto } from './dto/update-he_thong_rap.dto';

@Injectable()
export class HeThongRapService {
  create(createHeThongRapDto: CreateHeThongRapDto) {
    return 'This action adds a new heThongRap';
  }

  findAll() {
    return `This action returns all heThongRap`;
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
