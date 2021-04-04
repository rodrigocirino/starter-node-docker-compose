class User {
  constructor(name = '', age = 0) {
    this.name = name;
    this.age = age;
  }

  get _name() {
    return this.name;
  }

  get _age() {
    return this.age;
  }

  set _name(val) {
    this.name = val;
  }

  set _age(val) {
    this.age = val;
  }
}

module.exports = User;
