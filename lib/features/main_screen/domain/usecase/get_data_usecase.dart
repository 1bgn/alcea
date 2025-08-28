import 'package:asker/features/main_screen/domain/models/question_block.dart';
import 'package:injectable/injectable.dart';

import '../models/answer.dart';

@injectable
class GetDataUsecase{
  List<QuestionBlock> execute(){
    return [
      QuestionBlock(
        ask:
        "Выберите сильные стороны препарата Индинол Форто? (ВОЗМОЖНО НЕСКОЛЬКО ОТВЕТОВ)",
        brandName: "Индинол Форто",
        answers: [
          Answer(
            answer: "Универсален и подходит при всех типах мастопатии",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Включен в действующие Клинические Рекомендации по ДДМЖ  с повышенным уровнем убедительности и достоверности (В2)",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Обеспечивает патогенетическое лечение,а не симптоматическое",
            isCorrect: true,
          ),
        ],
      ),
      QuestionBlock(
        ask:
        "Входят ли аэробы в спектр действия Гайномакс Плюс",
        brandName: "Гайномакс Плюс",
        answers: [
          Answer(
            answer: "Входят",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Не входят",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Входит только стафилококк",
            isCorrect: false,
          ),
        ],
      ),
      QuestionBlock(
        ask:
        "Гайномакс Плюс влияет ли на лактобактерии?",
        brandName: "Гайномакс Плюс",
        answers: [
          Answer(
            answer: "Подавляет",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Подавляет частично",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Лактобактерии не входят в спектр действия Гайномакса Плюс",
            isCorrect: true,
          ),
        ],
      ),
      QuestionBlock(
        ask:
        "Выберите препараты железа последнего поколения:",
        brandName: "Ферретаб",
        answers: [
          Answer(
            answer: "Органические формы железа в сочетании с синергидными компонентами (Ферретаб комп)",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Органические соли железа",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Неорганические соли/оксиды железа (сульфат железа)",
            isCorrect: false,
          ),
        ],
      ),
      QuestionBlock(
        ask:
        "Какие фитоэкстракты входят в состав Тайм-фактор?",
        brandName: "Тайм-Фактор",
        answers: [
          Answer(
            answer: "Изофлавоны сои, экстракт диоскореи, экстракт корня дудника, экстракт корня имбиря",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Экстракт плодов витекса священного, индол-3-карбинол, экстракт корня дудника, экстракт корня имбиря",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Экстракт красного клевера, экстракт шишек хмеля, экстракт листьев шалфея, кальций",
            isCorrect: false,
          ),
        ],
      ),
      QuestionBlock(
        ask:
        "Какие фитоэкстракты входят в состав Эстровэл?",
        brandName: "Эстровэл",
        answers: [
          Answer(
            answer: "Экстракт корня дудника, экстракт корня имбиря, экстракт плодов витекса священного, индол-3-карбинол",
            isCorrect: false,
          ),
          Answer(
            answer:
            "Изофлавоны сои, экстракт плодов витекса священного, экстракт диоскореи, индол-3-карбинол",
            isCorrect: true,
          ),
          Answer(
            answer:
            "Экстракт пустырника, экстракт валерианы, экстракт мелиссы, магний",
            isCorrect: false,
          ),
        ],
      ),
    ];
  }
}