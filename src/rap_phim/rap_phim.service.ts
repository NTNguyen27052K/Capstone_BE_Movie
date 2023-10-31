import { Injectable } from '@nestjs/common';
import { CreateRapPhimDto } from './dto/create-rap_phim.dto';
import { UpdateRapPhimDto } from './dto/update-rap_phim.dto';

@Injectable()
export class RapPhimService {
  create(createRapPhimDto: CreateRapPhimDto) {
    return 'This action adds a new rapPhim';
  }

  findAll() {
    return `This action returns all rapPhim`;
  }

  findOne(id: number) {
    return `This action returns a #${id} rapPhim`;
  }

  update(id: number, updateRapPhimDto: UpdateRapPhimDto) {
    return `This action updates a #${id} rapPhim`;
  }

  remove(id: number) {
    return `This action removes a #${id} rapPhim`;
  }
}
