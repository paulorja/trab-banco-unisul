Manager.create([
                   {login: 'gerente1', senha: '123'},
                   {login: 'gerente2', senha: '123456'},
               ])

PhysicalPerson.create([
                          {
                              cpf: '123',
                              nome: 'João',
                              person: Person.create({tipo: Person.tipos[:fisica]}),
                              address: Address.create
                          },
                          {
                              cpf: '456',
                              nome: 'Maria',
                              person: Person.create({tipo: Person.tipos[:fisica]}),
                              address: Address.create
                          }
                      ])

LegalPerson.create([
                       {
                           cnpj: '1234',
                           nome: 'Facebook',
                           person: Person.create({tipo: Person.tipos[:fisica]}),
                           address: Address.create
                       },
                       {
                           cnpj: '4567',
                           nome: 'Google',
                           person: Person.create({tipo: Person.tipos[:fisica]}),
                           address: Address.create
                       }
                   ])

Agency.create([
                  {nome: 'Agencia 1', numero: 123},
                  {nome: 'Agencia 2', numero: 1234},
                  {nome: 'Agencia 3', numero: 456}
              ])