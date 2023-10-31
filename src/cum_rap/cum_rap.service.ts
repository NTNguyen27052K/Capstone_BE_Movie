import { Injectable } from '@nestjs/common';
import { CreateCumRapDto } from './dto/create-cum_rap.dto';
import { UpdateCumRapDto } from './dto/update-cum_rap.dto';

@Injectable()
export class CumRapService {
  create(createCumRapDto: CreateCumRapDto) {
    return 'This action adds a new cumRap';
  }

  findAll() {
    return `This action returns all cumRap`;
  }

  findOne(id: number) {
    return `This action returns a #${id} cumRap`;
  }

  update(id: number, updateCumRapDto: UpdateCumRapDto) {
    return `This action updates a #${id} cumRap`;
  }

  remove(id: number) {
    return `This action removes a #${id} cumRap`;
  }
}
