import { Injectable } from '@nestjs/common';
import { CreatePhimDto } from './dto/create-phim.dto';
import { UpdatePhimDto } from './dto/update-phim.dto';

@Injectable()
export class PhimService {
  create(createPhimDto: CreatePhimDto) {
    return 'This action adds a new phim';
  }

  findAll() {
    return `This action returns all phim`;
  }

  findOne(id: number) {
    return `This action returns a #${id} phim`;
  }

  update(id: number, updatePhimDto: UpdatePhimDto) {
    return `This action updates a #${id} phim`;
  }

  remove(id: number) {
    return `This action removes a #${id} phim`;
  }
}
