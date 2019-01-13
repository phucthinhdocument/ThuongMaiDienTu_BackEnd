using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class ChoThueXeContext : DbContext
    {
        public ChoThueXeContext()
        {
        }

        public ChoThueXeContext(DbContextOptions<ChoThueXeContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Account { get; set; }
        public virtual DbSet<Car> Car { get; set; }
        public virtual DbSet<CarFeature> CarFeature { get; set; }
        public virtual DbSet<Customer> Customer { get; set; }
        public virtual DbSet<CustomerCar> CustomerCar { get; set; }
        public virtual DbSet<Feature> Feature { get; set; }
        public virtual DbSet<FeaturePackage> FeaturePackage { get; set; }
        public virtual DbSet<Location> Location { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Package> Package { get; set; }
        public virtual DbSet<PackageFeaturePackage> PackageFeaturePackage { get; set; }
        public virtual DbSet<Partner> Partner { get; set; }
        public virtual DbSet<PartnerCar> PartnerCar { get; set; }
        public virtual DbSet<PartnerPayment> PartnerPayment { get; set; }
        public virtual DbSet<Payment> Payment { get; set; }
        public virtual DbSet<PaymentsCustomer> PaymentsCustomer { get; set; }
        public virtual DbSet<Procedure> Procedure { get; set; }
        public virtual DbSet<TypeCar> TypeCar { get; set; }
        public virtual DbSet<PartnerTenantPackage> PartnerTenantPackage { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=baitapgiuaky1997.database.windows.net;Database=giuaKy;User Id=kuthinh@baitapgiuaky1997;Password=Thinh1997;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>(entity =>
            {
                entity.HasKey(e => e.Username);

                entity.Property(e => e.Username)
                    .HasColumnName("username")
                    .HasMaxLength(100)
                    .ValueGeneratedNever();

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.IsDelete).HasColumnName("isDelete");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasColumnName("password")
                    .HasMaxLength(450);

                entity.Property(e => e.Role)
                    .HasColumnName("role")
                    .HasMaxLength(30);
            });

            modelBuilder.Entity<Car>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Brank)
                    .HasColumnName("brank")
                    .HasMaxLength(100);

                entity.Property(e => e.Color)
                    .HasColumnName("color")
                    .HasMaxLength(100);

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(1000);

                entity.Property(e => e.ImageLink)
                    .HasColumnName("imageLink")
                    .HasMaxLength(2000);

                entity.Property(e => e.Name)
                    .HasColumnName("name")
                    .HasMaxLength(100);

                entity.Property(e => e.Price)
                    .HasColumnName("price")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.PurchDate).HasColumnName("purchDate");

                entity.Property(e => e.TypeCar)
                    .HasColumnName("typeCar")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<CarFeature>(entity =>
            {
                entity.HasKey(e => new { e.IdCar, e.IdFeature, e.Id });

                entity.ToTable("Car_Feature");

                entity.Property(e => e.IdCar)
                    .HasColumnName("idCar")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdFeature)
                    .HasColumnName("idFeature")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<Customer>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Email).HasMaxLength(300);

                entity.Property(e => e.FistNameAndLastName)
                    .HasColumnName("fistNameAndLastName")
                    .HasMaxLength(300);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.PhoneNumber)
                    .HasColumnName("phoneNumber")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<CustomerCar>(entity =>
            {
                entity.HasKey(e => new { e.IdCustomer, e.IdCar });

                entity.ToTable("Customer_Car");

                entity.Property(e => e.IdCustomer)
                    .HasColumnName("idCustomer")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdCar)
                    .HasColumnName("idCar")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Description)
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Id).HasMaxLength(450);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.PaymentsCustomer)
                    .HasMaxLength(300)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Feature>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(500);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.NameFeature)
                    .HasColumnName("nameFeature")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<FeaturePackage>(entity =>
            {
                entity.ToTable("Feature_Package");

                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(100);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name)
                    .HasColumnName("name")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Address)
                    .HasColumnName("address")
                    .HasMaxLength(100);

                entity.Property(e => e.City)
                    .HasColumnName("city")
                    .HasMaxLength(100);

                entity.Property(e => e.Country)
                    .HasColumnName("country")
                    .HasMaxLength(100);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<Orders>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DateOfhire).HasColumnName("dateOfhire");

                entity.Property(e => e.DateOrder).HasColumnName("dateOrder");

                entity.Property(e => e.LocationReceive)
                    .HasColumnName("locationReceive")
                    .HasMaxLength(100);

                entity.Property(e => e.NameCar)
                    .HasColumnName("nameCar")
                    .HasMaxLength(100);

                entity.Property(e => e.NameCustomer)
                    .HasColumnName("nameCustomer")
                    .HasMaxLength(100);

                entity.Property(e => e.CarReturnDay).HasColumnName("payDate");

                entity.Property(e => e.PriceOrder)
                    .HasColumnName("priceOrder")
                    .HasColumnType("decimal(18, 0)");
            });

            modelBuilder.Entity<Package>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name)
                    .HasColumnName("name")
                    .HasMaxLength(100);

                entity.Property(e => e.Price)
                    .HasColumnName("price")
                    .HasColumnType("money");
            });

            modelBuilder.Entity<PackageFeaturePackage>(entity =>
            {
                entity.HasKey(e => new { e.IdPackage, e.IdFeaturePackage, e.Id });

                entity.ToTable("Package_FeaturePackage");

                entity.Property(e => e.IdPackage)
                    .HasColumnName("idPackage")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdFeaturePackage)
                    .HasColumnName("idFeaturePackage")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name).HasMaxLength(300);
            });

            modelBuilder.Entity<Partner>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Email)
                    .HasColumnName("email")
                    .HasMaxLength(100);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.NameCompany)
                    .HasColumnName("nameCompany")
                    .HasMaxLength(100);

                entity.Property(e => e.PartnerPayment)
                    .HasColumnName("partnerPayment")
                    .HasMaxLength(100);

                entity.Property(e => e.PhoneNumber)
                    .HasColumnName("phoneNumber")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<PartnerCar>(entity =>
            {
                entity.HasKey(e => new { e.IsCar, e.StatusHire, e.Id });

                entity.ToTable("Partner_Car");

                entity.Property(e => e.IsCar)
                    .HasColumnName("isCar")
                    .HasMaxLength(100);

                entity.Property(e => e.StatusHire).HasColumnName("statusHire");

                entity.Property(e => e.IdPartner)
                    .IsRequired()
                    .HasColumnName("idPartner")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<PartnerPayment>(entity =>
            {
                entity.HasKey(e => new { e.IdPackage, e.IdPartner, e.Id });

                entity.ToTable("Partner_Payment");

                entity.Property(e => e.IdPackage)
                    .HasColumnName("idPackage")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdPartner)
                    .HasColumnName("idPartner")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.PaymentDay).HasColumnName("paymentDay");
            });

            modelBuilder.Entity<PartnerTenantPackage>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.DateTenant)
                    .HasColumnName("dateTenant")
                    .HasColumnType("date");

                entity.Property(e => e.IdPackage)
                    .HasColumnName("idPackage")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdPartner)
                    .HasColumnName("idPartner")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.IsDelete).HasColumnName("isDelete");
            });

            modelBuilder.Entity<Payment>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(100);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.NamePayments)
                    .HasColumnName("namePayments")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<PaymentsCustomer>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(500);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name)
                    .HasColumnName("name")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<Procedure>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasColumnName("description")
                    .HasMaxLength(500);

                entity.Property(e => e.IdPartner)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name)
                    .HasColumnName("name")
                    .HasMaxLength(100);
            });

            modelBuilder.Entity<TypeCar>(entity =>
            {
                entity.Property(e => e.Id)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.Identity).ValueGeneratedOnAdd();

                entity.Property(e => e.Name).HasMaxLength(100);

                entity.Property(e => e.TypeDescription)
                    .HasColumnName("typeDescription")
                    .HasMaxLength(500);
            });
        }
    }
}
