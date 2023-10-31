import { Injectable } from '@nestjs/common';
import { CreateGheDto } from './dto/create-ghe.dto';
import { UpdateGheDto } from './dto/update-ghe.dto';

@Injectable()
export class GheService {
  create(createGheDto: CreateGheDto) {
    return 'This action adds a new ghe';
  }

  findAll() {
    return `This action returns all ghe`;
  }

  findOne(id: number) {
    return `This action returns a #${id} ghe`;
  }

  update(id: number, updateGheDto: UpdateGheDto) {
    return `This action updates a #${id} ghe`;
  }

  remove(id: number) {
    return `This action removes a #${id} ghe`;
  }
}
