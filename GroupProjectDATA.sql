use ha_hng42521;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `menu_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `menu_items` (
  `item_id` INT NOT NULL,
  `item_name` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `price` DECIMAL(4,2) NULL,
  PRIMARY KEY (`item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` INT NOT NULL,
  `f_name` VARCHAR(45) NULL,
  `l_name` VARCHAR(45) NULL,
  `position` VARCHAR(45) NULL,
  `hire_date` DATE NULL,
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` INT NOT NULL,
  `order_date` DATE NULL,
  `total_amount` VARCHAR(45) NULL,
  `employee_employee_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_employee1_idx` (`employee_employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_employee1`
    FOREIGN KEY (`employee_employee_id`)
    REFERENCES `employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventory` (
  `ingredient_id` INT NOT NULL,
  `ingredient_name` VARCHAR(45) NULL,
  `ingredient_cost` VARCHAR(45) NULL,
  `ingredient_amount` VARCHAR(45) NULL,
  PRIMARY KEY (`ingredient_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` INT NOT NULL,
  `s_name` VARCHAR(45) NULL,
  `s_contact` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `inventory_ingredient_id` INT NOT NULL,
  PRIMARY KEY (`supplier_id`),
  INDEX `fk_supplier_inventory1_idx` (`inventory_ingredient_id` ASC) VISIBLE,
  CONSTRAINT `fk_supplier_inventory1`
    FOREIGN KEY (`inventory_ingredient_id`)
    REFERENCES `inventory` (`ingredient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shifts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shifts` (
  `shift_id` INT NOT NULL,
  `shift_date` VARCHAR(45) NULL,
  `start_time` VARCHAR(45) NULL,
  `end_time` VARCHAR(45) NULL,
  `shift_type` VARCHAR(45) NULL,
  PRIMARY KEY (`shift_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shift_assignments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shift_assignments` (
  `assignment_id` INT NOT NULL,
  PRIMARY KEY (`assignment_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `order_item` (
  `order_item_id` INT NOT NULL,
  PRIMARY KEY (`order_item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `completed_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `completed_order` (
  `item_id` INT NOT NULL,
  `orders_id` INT NOT NULL,
  PRIMARY KEY (`item_id`, `orders_id`),
  INDEX `fk_menu_items_has_orders_orders1_idx` (`orders_id` ASC) VISIBLE,
  INDEX `fk_menu_items_has_orders_menu_items_idx` (`item_id` ASC) VISIBLE,
  CONSTRAINT `fk_menu_items_has_orders_menu_items`
    FOREIGN KEY (`item_id`)
    REFERENCES `menu_items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_menu_items_has_orders_orders1`
    FOREIGN KEY (`orders_id`)
    REFERENCES `orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shift_assignment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shift_assignment` (
  `shift_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  PRIMARY KEY (`shift_id`, `employee_id`),
  INDEX `fk_shifts_has_employee_employee1_idx` (`employee_id` ASC) VISIBLE,
  INDEX `fk_shifts_has_employee_shifts1_idx` (`shift_id` ASC) VISIBLE,
  CONSTRAINT `fk_shifts_has_employee_shifts1`
    FOREIGN KEY (`shift_id`)
    REFERENCES `shifts` (`shift_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_shifts_has_employee_employee1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `recipe_ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `recipe_ingredients` (
  `ingredient_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  PRIMARY KEY (`ingredient_id`, `item_id`),
  INDEX `fk_inventory_has_menu_items_menu_items1_idx` (`item_id` ASC) VISIBLE,
  INDEX `fk_inventory_has_menu_items_inventory1_idx` (`ingredient_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_has_menu_items_inventory1`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `inventory` (`ingredient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventory_has_menu_items_menu_items1`
    FOREIGN KEY (`item_id`)
    REFERENCES `menu_items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


USE ha_hng42521;

-- 1) menu_items
INSERT INTO `menu_items` (`item_id`, `item_name`, `category`, `price`) VALUES
(1, 'Espresso',       'Beverage', 2.50),
(2, 'Americano',      'Beverage', 3.00),
(3, 'Latte',          'Beverage', 3.50),
(4, 'Cappuccino',     'Beverage', 3.75),
(5, 'Mocha',          'Beverage', 4.00),
(6, 'Hot Chocolate',  'Beverage', 2.75),
(7, 'Green Tea',      'Beverage', 2.25),
(8, 'Croissant',      'Pastry',   2.00),
(9, 'Blueberry Muffin','Pastry',  2.25),
(10, 'Bagel',         'Pastry',   1.75);

-- 2) employee
INSERT INTO `employee` (`employee_id`, `f_name`, `l_name`, `position`, `hire_date`) VALUES
(1,  'John',   'Doe',     'Manager',   '2023-01-10'),
(2,  'Jane',   'Smith',   'Barista',   '2023-02-05'),
(3,  'Alex',   'Johnson', 'Barista',   '2023-03-12'),
(4,  'Emily',  'Davis',   'Cashier',   '2023-04-01'),
(5,  'Michael','Wilson',  'Barista',   '2023-05-20'),
(6,  'Sarah',  'Brown',   'Supervisor','2023-06-15'),
(7,  'David',  'Taylor',  'Barista',   '2023-07-22'),
(8,  'Laura',  'Anderson','Cashier',   '2023-08-30'),
(9,  'Daniel', 'Thomas',  'Barista',   '2023-09-10'),
(10, 'Sophie', 'Lee',     'Barista',   '2023-10-02');

-- 3) orders
-- Note: 'employee_employee_id' references an existing employee_id.
INSERT INTO `orders` (`order_id`, `order_date`, `total_amount`, `employee_employee_id`) VALUES
(1,  '2023-11-01', '7.50',  1),
(2,  '2023-11-02', '11.00', 2),
(3,  '2023-11-03', '8.25',  3),
(4,  '2023-11-04', '9.75',  4),
(5,  '2023-11-05', '12.00', 5),
(6,  '2023-11-06', '6.50',  6),
(7,  '2023-11-07', '10.00', 7),
(8,  '2023-11-08', '13.50', 8),
(9,  '2023-11-09', '15.25', 9),
(10, '2023-11-10', '5.75',  10);

-- 4) inventory
INSERT INTO `inventory` (`ingredient_id`, `ingredient_name`, `ingredient_cost`, `ingredient_amount`) VALUES
(1,  'Coffee Beans',    '20.00', '5 lbs'),
(2,  'Milk',            '3.50',  '2 gallons'),
(3,  'Sugar',           '2.00',  '2 lbs'),
(4,  'Chocolate Syrup', '4.00',  '1 bottle'),
(5,  'Tea Leaves',      '5.00',  '1 lb'),
(6,  'Flour',           '2.50',  '2 lbs'),
(7,  'Butter',          '3.00',  '1 lb'),
(8,  'Eggs',            '2.50',  '1 dozen'),
(9,  'Yeast',           '1.50',  '0.5 lb'),
(10, 'Cream',           '3.00',  '1 quart');

-- 5) supplier
-- Note: 'inventory_ingredient_id' references an existing ingredient_id from `inventory`.
INSERT INTO `supplier` (`supplier_id`, `s_name`, `s_contact`, `phone_number`, `email`, `inventory_ingredient_id`) VALUES
(1,  'CoffeeCo',       'Alice',   '555-1111', 'alice@coffeeco.com',       1),
(2,  'DairySupplies',  'Bob',     '555-2222', 'bob@dairy.com',            2),
(3,  'SweetSugar',     'Charlie', '555-3333', 'charlie@sugar.com',        3),
(4,  'ChocolateWorld', 'Diana',   '555-4444', 'diana@chocoworld.com',     4),
(5,  'TeaMasters',     'Ethan',   '555-5555', 'ethan@teamasters.com',     5),
(6,  'BakeryBasics',   'Fiona',   '555-6666', 'fiona@bakerybasics.com',   6),
(7,  'ButterLand',     'George',  '555-7777', 'george@butterland.com',    7),
(8,  'FarmEggs',       'Hannah',  '555-8888', 'hannah@farmeggs.com',      8),
(9,  'YeastCorp',      'Ian',     '555-9999', 'ian@yeastcorp.com',        9),
(10, 'CreamyDelights', 'Jane',    '555-1010', 'jane@creamy.com',         10);

-- 6) shifts
INSERT INTO `shifts` (`shift_id`, `shift_date`, `start_time`, `end_time`, `shift_type`) VALUES
(1,  '2023-11-01', '06:00', '12:00', 'Morning'),
(2,  '2023-11-01', '12:00', '18:00', 'Afternoon'),
(3,  '2023-11-01', '18:00', '23:00', 'Evening'),
(4,  '2023-11-02', '06:00', '12:00', 'Morning'),
(5,  '2023-11-02', '12:00', '18:00', 'Afternoon'),
(6,  '2023-11-02', '18:00', '23:00', 'Evening'),
(7,  '2023-11-03', '06:00', '12:00', 'Morning'),
(8,  '2023-11-03', '12:00', '18:00', 'Afternoon'),
(9,  '2023-11-03', '18:00', '23:00', 'Evening'),
(10, '2023-11-04', '06:00', '12:00', 'Morning');

-- 7) shift_assignments (Note: This table has only one column, no FKs)
INSERT INTO `shift_assignments` (`assignment_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- 8) order_item (No FK columns defined, just a PK)
INSERT INTO `order_item` (`order_item_id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- 9) completed_order
-- Composite PK: (item_id, orders_id) referencing menu_items(item_id) and orders(order_id).
INSERT INTO `completed_order` (`item_id`, `orders_id`) VALUES
(1,  1),
(2,  2),
(3,  3),
(4,  4),
(5,  5),
(6,  6),
(7,  7),
(8,  8),
(9,  9),
(10, 10);

-- 10) shift_assignment
-- Composite PK: (shift_id, employee_id) referencing shifts(shift_id) and employee(employee_id).
INSERT INTO `shift_assignment` (`shift_id`, `employee_id`) VALUES
(1,  1),
(2,  2),
(3,  3),
(4,  4),
(5,  5),
(6,  6),
(7,  7),
(8,  8),
(9,  9),
(10, 10);

-- 11) recipe_ingredients
-- Composite PK: (ingredient_id, item_id) referencing inventory(ingredient_id) and menu_items(item_id).
INSERT INTO `recipe_ingredients` (`ingredient_id`, `item_id`) VALUES
(1,  1),
(2,  2),
(3,  3),
(4,  4),
(5,  5),
(6,  6),
(7,  7),
(8,  8),
(9,  9),
(10, 10);

