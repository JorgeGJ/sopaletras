drop database if exists `sopadeletras`;
create database `sopadeletras`;
use `sopadeletras`;
CREATE TABLE `categoria` (
`id` int(11) NOT NULL,
`categoria` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `palabra` (
`id` int(11) NOT NULL,
`categoria_id` int(11) NOT NULL,
`palabra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

ALTER TABLE `palabra` ADD PRIMARY KEY (`id`);
ALTER TABLE `categoria` ADD PRIMARY KEY (`id`);
ALTER TABLE `palabra` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
ALTER TABLE `categoria` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
ALTER TABLE `palabra` ADD CONSTRAINT `fkCategoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO `categoria` (`id`, `categoria`) VALUES
('','PaisesEuropa'),
('','EquiposFutbol'),
('','VideoJuegos');
INSERT INTO `palabra` (`id`, `categoria_id`, `palabra`) VALUES
('','1','madrid'),
('','1','paris'),
('','1','alemania'),
('','1','portugal'),
('','1','italia'),
('','1','irlanda'),
('','1','atenas'),
('','2','madrid'),
('','2','barcelona'),
('','2','athletico'),
('','2','betis'),
('','2','cordoba'),
('','2','valecia'),
('','2','granada'),
('','3','darksouls'),
('','3','lol'),
('','3','counterstrike'),
('','3','wow'),
('','3','witcher'),
('','3','fornite'),
('','3','pugb');