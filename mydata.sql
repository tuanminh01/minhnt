create database mydata;

use mydata;

create table users (
	id bigint auto_increment primary key,
    username nvarchar(50) not null,
    email nvarchar(50) not null,
    password nvarchar(50) not null,
    birthday date null,
    image_url text not null,
    is_active boolean not null,
    created_at timestamp not null,
    updated_at timestamp not null
);

insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('minh','minh123@gmail.com', '123456', '2001-11-22', 'ascscsca13d',false, '2023-11-23', '2023-11-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('hieu','hieu123@gmail.com', '987654', '2001-10-20', 'ascscsca14d',true, '2023-11-25', '2023-11-26');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('dat','dat123@gmail.com', '123456', '2001-09-22', 'ascscsca15d',true, '2023-10-17', '2023-10-20');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('long','long123@gmail.com', '123456', '2001-11-22', 'ascscsca16d',false, '2023-05-12', '2023-05-11');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('nam','nam123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('luan','luan123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('chung','chung123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('loc','loc123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('doan','doan123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('bach','bach123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('phuc','phuc123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('manh','manh123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('nghia','nghia123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('ly','ly123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('phuong','phuong123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('duyen','duyen123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');
insert into users(username, email, password, birthday, image_url, is_active, created_at, updated_at) values ('anh','anh123@gmail.com', '123456', '2001-11-22', 'ascscsca17d',false, '2023-04-23', '2023-04-24');

create table categories (
	id bigint auto_increment primary key,
    category_name nvarchar(50) not null,
    created_at timestamp not null,
    updated_at timestamp not null
);

insert into categories(category_name, created_at, updated_at) values ('nhom A','2023-11-23', '2023-11-24');
insert into categories(category_name, created_at, updated_at) values ('nhom B','2023-11-25', '2023-11-26');
insert into categories(category_name, created_at, updated_at) values ('nhom C','2023-10-17', '2023-10-20');
insert into categories(category_name, created_at, updated_at) values ('nhom D','2023-05-12', '2023-05-11');
insert into categories(category_name, created_at, updated_at) values ('nhom E','2023-04-23', '2023-04-24');

create table companies (
	id bigint auto_increment primary key,
    company_name nvarchar(100) not null,
    company_code nvarchar(50) not null,
    created_at timestamp not null,
    updated_at timestamp not null
);

insert into companies(company_name, company_code, created_at, updated_at) values ('MLVN', '123242', '2022-11-20', '2022-11-26');
insert into companies(company_name, company_code, created_at, updated_at) values ('ATH', '261532', '2022-05-15', '2022-05-16');
insert into companies(company_name, company_code, created_at, updated_at) values ('VMO', '215648', '2022-01-05', '2022-01-07');
insert into companies(company_name, company_code, created_at, updated_at) values ('VTI', '134986', '2022-09-12', '2022-09-13');
insert into companies(company_name, company_code, created_at, updated_at) values ('Sun*', '132189', '2022-12-25', '2022-12-26');

create table projects (
	id bigint auto_increment primary key,
    project_name nvarchar(50) not null,
    category_id bigint,
    projected_spend int not null,
    projected_variance int not null,
    revenue_recognised int,
    created_at timestamp not null,
    updated_at timestamp not null,
    company_id bigint,
    foreign key (category_id) references categories(id),
    foreign key (company_id) references companies(id)
);

insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,created_at,updated_at,company_id)
values ('project 1', 1, 120, 1, 150, '2023-08-23', '2023-11-24', 1);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,created_at,updated_at,company_id)
values ('project 2', 2, 200, 1, 250, '2023-06-23', '2023-11-24', 1);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,created_at,updated_at,company_id)
values ('project 3', 3, 150, 1, 190, '2023-01-23', '2023-05-24', 2);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,created_at,updated_at,company_id)
values ('project 4', 4, 250, 1, 280, '2023-02-23', '2023-05-24', 3);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,created_at,updated_at,company_id)
values ('project 5', 5, 100, 1, 150, '2023-07-23', '2023-10-24', 4);

create table project_users (
	id bigint auto_increment primary key,
    project_id bigint,
    user_id bigint, 
    created_at timestamp not null,
    updated_at timestamp not null,
    foreign key (project_id) references projects(id),
    foreign key (user_id) references users(id)
);

insert into project_users(project_id,user_id,created_at,updated_at) values (1, 2, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 1, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 3, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (2, 4, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (2, 5, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 6, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 7, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 8, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 9, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 10, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 11, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 12, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 13, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 14, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 15, '2023-02-23', '2023-05-24');
insert into project_users(project_id,user_id,created_at,updated_at) values (1, 16, '2023-02-23', '2023-05-24');
/*3. Viết lệnh sql để có thể lấy thông tin những bản ghi của projects và số lượng user của mỗi projects đó (count user)*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised, count(project_users.user_id) as 'SL'
from projects left join project_users on projects.id = project_users.project_id
group by project_users.project_id 

/*4. Viết lệnh sql để lấy ra danh sách các project của company có company_name = "MLVN"*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised
from projects join companies on projects.company_id = companies.id
where companies.company_name = 'MLVN'

/*5. Viết lệnh sql lấy ra danh sách các công ty có project có project_spend > 100. 
Viết lệnh sql để lấy ra thông tin của user tham gia vào projects
*/
select companies.company_name, companies.company_code
from projects inner join companies on projects.company_id = companies.id	
where projects.projected_spend > 100

select users.username, users.email, users.birthday 
from users inner join project_users on users.id = project_users.user_id

/*6. Lấy ra danh sách project mà có số lượng user tham gia > 10, sắp xếp số lượng user tham gia tăng dần*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised
from projects inner join project_users on projects.id = project_users.project_id
group by project_users.project_id
having count(project_users.user_id) > 10

select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised
from projects inner join project_users on projects.id = project_users.project_id
group by project_users.project_id
order by count(project_users.user_id) asc

/*7. Xóa project mà chưa có user nào tham gia*/
Delete from projects where id not in (
	select project_users.project_id
    from project_users
    group by project_users.project_id
    having count(project_users.user_id) > 0
)

/*8. Viết lệnh SQL trả về thông tin id, project_name, revenue_status của các project. Trong đó revenue_status được tính như sau 
nếu revenue_recognised > projected_spend thì trả về status = profit, nếu revenue_recognised = projected_spend thì trả về 
status = break even ngược lại thì status = loss*/

select projects.id, projects.project_name, 
(case when revenue_recognised > projected_spend then 'profit' when revenue_recognised = projected_spend then 'break' else 'loss' end) as 'revenue_status'
from projects

/*9. Viết lệnh SQL thống kê tổng doanh thu đạt được (revenue_recognised) của các dự án trong vòng 1 tháng*/
select month(projects.created_at) as 'Month', year(projects.created_at) as 'Year', sum(revenue_recognised) as 'Sum'
from projects
group by month(projects.created_at)
order by month(projects.created_at)
