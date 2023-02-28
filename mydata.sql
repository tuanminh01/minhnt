create database mydata;

use mydata;

create table users (
	id bigint auto_increment,
    username varchar(16) not null,
    email nvarchar(50) not null,
    password nvarchar(10) not null,
    birthday date,
    image_url varchar(255),
    role varchar(255) not null,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT users1_unique UNIQUE(email),
    CONSTRAINT users2_unique UNIQUE(username)
);

insert into users(username, email, password, birthday, image_url, role) values ('minh','minh123@gmail.com', '123456', '2001-11-22', 'ascscsca13d','user');
insert into users(username, email, password, birthday, image_url, role) values ('hieu','hieu123@gmail.com', '987654', '2001-10-20', 'ascscsca14d','user');
insert into users(username, email, password, birthday, image_url, role) values ('dat','dat123@gmail.com', '123456', '2001-09-22', 'ascscsca15d','user');
insert into users(username, email, password, birthday, image_url, role) values ('long','long123@gmail.com', '123456', '2001-11-22', 'ascscsca16d','user');
insert into users(username, email, password, birthday, image_url, role) values ('nam','nam123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('luan','luan123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('chung','chung123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('loc','loc123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('doan','doan123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('bach','bach123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('phuc','phuc123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('manh','manh123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('nghia','nghia123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('ly','ly123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('phuong','phuong123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('duyen','duyen123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');
insert into users(username, email, password, birthday, image_url, role) values ('anh','anh123@gmail.com', '123456', '2001-11-22', 'ascscsca17d','user');

insert into users(username, email, password, birthday, image_url, role) values ('minhloc','minhloc123@gmail.com', '123456', '2000-11-22', 'ascscsca17d','user');

create table categories (
	id bigint auto_increment,
    category_name varchar(50) not null,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);

insert into categories(category_name) values ('nhom A');
insert into categories(category_name) values ('nhom B');
insert into categories(category_name) values ('nhom C');
insert into categories(category_name) values ('nhom D');
insert into categories(category_name) values ('nhom E');

create table companies (
	id bigint auto_increment,
    company_name nvarchar(50) not null,
    company_code nvarchar(255) not null,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT companies_unique UNIQUE(company_code)
);

insert into companies(company_name, company_code) values ('monstar-lab', '123242');
insert into companies(company_name, company_code) values ('ATH', '261532');
insert into companies(company_name, company_code) values ('VMO', '215648');
insert into companies(company_name, company_code) values ('VTI', '134986');
insert into companies(company_name, company_code) values ('Sun*', '132189');

create table projects (
	id bigint auto_increment,
    project_name nvarchar(50) not null,
    category_id bigint,
    projected_spend int,
    projected_variance int,
    revenue_recognised int,
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP,
    company_id bigint,
    PRIMARY KEY(id),
    CONSTRAINT FK_ProjectCategory foreign key (category_id) references categories(id),
    CONSTRAINT FK_ProjectCompany foreign key (company_id) references companies(id)
);

insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,company_id)
values ('project 1', 1, 120, 1, 150, 1);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,company_id)
values ('project 2', 2, 200, 1, 250, 1);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,company_id)
values ('project 3', 3, 150, 1, 190, 2);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,company_id)
values ('project 4', 4, 250, 1, 280, 3);
insert into projects(project_name, category_id, projected_spend,projected_variance,revenue_recognised,company_id)
values ('project 5', 5, 100, 1, 150, 4);

create table project_users (
	id bigint auto_increment,
    project_id bigint,
    user_id bigint, 
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP,
    PRIMARY KEY(id),
    CONSTRAINT FK_Project foreign key (project_id) references projects(id),
    CONSTRAINT FK_User foreign key (user_id) references users(id)
);

insert into project_users(project_id,user_id) values (1, 2);
insert into project_users(project_id,user_id) values (1, 1);
insert into project_users(project_id,user_id) values (1, 3);
insert into project_users(project_id,user_id) values (2, 4);
insert into project_users(project_id,user_id) values (2, 5);
insert into project_users(project_id,user_id) values (2, 1);
insert into project_users(project_id,user_id) values (1, 6);
insert into project_users(project_id,user_id) values (1, 7);
insert into project_users(project_id,user_id) values (1, 8);
insert into project_users(project_id,user_id) values (1, 9);
insert into project_users(project_id,user_id) values (1, 10);
insert into project_users(project_id,user_id) values (1, 11);
insert into project_users(project_id,user_id) values (1, 12);
insert into project_users(project_id,user_id) values (1, 13);
insert into project_users(project_id,user_id) values (1, 14);
insert into project_users(project_id,user_id) values (1, 15);
insert into project_users(project_id,user_id) values (1, 16);

/*3. Viết lệnh sql để có thể lấy thông tin những bản ghi của projects và số lượng user của mỗi projects đó (count user)*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised, count(project_users.user_id) as 'count_users'
from projects left join project_users on projects.id = project_users.project_id
group by project_users.project_id 

/*4. Viết lệnh sql để lấy ra danh sách các project của company có company_name = "monstar-lab"*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised
from projects join companies on projects.company_id = companies.id
where companies.company_name = 'monstar-lab'

/*5. Viết lệnh sql lấy ra danh sách các công ty có project có project_spend > 100. 
Viết lệnh sql để lấy ra thông tin của user tham gia vào projects
*/
select companies.company_name, companies.company_code
from projects inner join companies on projects.company_id = companies.id	
where projects.projected_spend > 100
group by companies.id

select distinct users.username, users.email, users.birthday 
from users inner join project_users on users.id = project_users.user_id

/*6. Lấy ra danh sách project mà có số lượng user tham gia > 10, sắp xếp số lượng user tham gia tăng dần*/
select projects.project_name, projects.projected_spend, projects.projected_variance, projects.revenue_recognised
from projects inner join project_users on projects.id = project_users.project_id
group by project_users.project_id
having count(project_users.user_id) > 10
order by count(project_users.user_id) asc

/*7. Xóa project mà chưa có user nào tham gia*/
Delete from projects where id not in (
	select project_users.project_id
    from project_users
    group by project_users.project_id
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
group by Month, Year
