USE [master]
GO
/****** Object:  Database [TravelDb]    Script Date: 16.11.2024 17:38:51 ******/
CREATE DATABASE [TravelDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TravelDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TravelDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TravelDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TravelDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TravelDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TravelDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TravelDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TravelDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TravelDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TravelDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TravelDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TravelDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TravelDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TravelDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TravelDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TravelDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TravelDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TravelDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TravelDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TravelDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TravelDb] SET RECOVERY FULL 
GO
ALTER DATABASE [TravelDb] SET  MULTI_USER 
GO
ALTER DATABASE [TravelDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TravelDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TravelDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TravelDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TravelDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TravelDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TravelDb', N'ON'
GO
ALTER DATABASE [TravelDb] SET QUERY_STORE = OFF
GO
USE [TravelDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici] [nvarchar](max) NULL,
	[Sifre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Admins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdresBlogs]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdresBlogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[AdresAcik] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Telefon] [nvarchar](max) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AdresBlogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](max) NULL,
	[Tarih] [datetime] NOT NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BlogImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Blogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hakkimizdas]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hakkimizdas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FotoUrl] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Hakkimizdas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iletisims]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iletisims](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Konu] [nvarchar](max) NULL,
	[Mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.iletisims] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 16.11.2024 17:38:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Yorum] [nvarchar](max) NULL,
	[Blogid] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Yorumlars] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202410131125593_AutomaticMigration', N'triptravel.Migrations.Configuration', 0x1F8B0800000000000400ED5BCD6EE33610BE17E83B083AB545D64AB29736B077917592D6D8CD0FA264D19E0246A21D3614A58A5460B7E893F5D047EA2B74A85F8A926CC9B69CEC22D84B4C71BE190EBFE1CF70F6BF7FFE1DBE9F7BD478C221273E1B9907837DD3C0CCF15DC266233312D3373F9AEFDF7DFBCDF0D4F5E6C6E7ACDF5BD90F24191F990F42044796C59D07EC213EF08813FADC9F8A81E37B16727DEB707FFF27EBE0C0C200610296610CAF23268887E31FF073EC3307072242F4DC7731E5693B7CB16354E302799807C8C12353842410217AC27490741ED884912945A1691C5382C0221BD3A96920C67C8104D87B74CBB12D429FCDEC001A10BD590418FA4D11E5381DC751D1BDED90F60FE590AC42308372222E7CAF23E0C1DBD447962EBE96A7CDDC87E0C553F0B658C851C79E1C99C7AE470057D77434A6A1ECB5CCCB835876CF287AECE5BC00FAC87F7BC638A2220AF188E108FA408FABE89E12E7235EDCF88F988D5844A96A21D808DF4A0DD07415FA010EC5E21A4F53BB2727A66195E52C5D3017536492414D98787B681A17A01CDD539C134071802DFC10FF8C190E91C0EE15120287307F1317C72EAC68D7747D94D08C38245309B48348328D7334FF84D94C3C8C4CF8D334CEC81CBB594B6AC62D0882AFA5F323BC4A934DA621DEB296A1551065057D42CC3F507FB6368552F9571AD5EAFA8038258FBD73E8D8218F1479A87F4572BEA5B6DE359D23427B577283299ECA75B9673D1F7D1679CF15E31B84F76B643F7764DFA0903C645A4EC0D21B386DD50CEC85AC0F9230130FCDB6BDA181A60BF44466F1D4693A7FF3C3C803B672D3B8C634EEC11F48909C1E07D9D7BB240CCE42DFBBF6A922167FB8033FCFB000ABFDBAAFB61F85CEBAF19741AD198399F86B1CD6EACA0F6AC76EFF67B59D6C4AF184EF307E92C0583F74B2E0A80F9D2CB0D60A9D5FD0E323F1C89F2E5A33780A80D7F0A9D575E60BFF36EC9FD43DED40AD9944281684136F4D1E65E2AF2CAA9F5DD7F617C8FD3AD65F7958EF7F2498A3DF77140CC79CFB0E89275A3B92242B7BD9D053E61A4B97F9C464758300CB81F82400AA83FA91F94365F44DA0F9B1AB004D369B32E0FE6070A08F55195535F2C73E1388009DD301CBDF782E6AA2FF96E37401E0A94F75CB259E8D859A7083A366E1EAD4EE34135719B82E9E264CEA21F26CCC0A98268456C2CA81B902504CE90A906267AD835137EE1540D9D25A0753ACDA1A8832F9D571A5E715A54FED81465F7657113F37BCE441AB2D4C467505269D457D652F0FAE26C0737617E9752BC9AF677978AB21113F3C4741006B8D92984F5B0C3BC9CA8FDFD8DDD3D45E826139BC265B9D5B9B6B82CD06AE88DA5719A42E3E23211770CF45F748AE7663D7ABE996C47203AD322DA570AD4E52C6B4ACBBFC3B11599531D7C10A1F9EC1B03CD831E3116265A21BE4E2671104C0355BF7D8A791C79AB6FF65D24AEA5A05519ADB63A5C96915276DAA620C2DCD0DBAD3AD8AD735E2EB73D87286F315756BB39C2DC3EBCC74A36C3FB39DE5A15484ACAD3D4A713C57718AD60E484586B8045534B7C74A8E7B2A4CD2D21E214FF0AA20796387984A12B8A5784A9A5E4C1C6C3504D664FF9747FC34BF5AA247D2F41CC1A3A44F4BC32A9A5F0CDD8A23D09628979F3CBBD3AE59B4E71D36CE39D66EB2F1975DAE7469D65085489B5E0C65D42BC39648A3DC33BAD36699703FC4C9B36D2A44DED8E78AF34C535E5CEEB634E1F98DB0FB74378BF633D97952AC7C0E4A1B77B93624192DFDF0D2C986245D55322269DA3DD5CAD7E3FA5D294D0174DA785299B69B8BBCE837BC44962EFC55FFB4E25A0C514738E99E5C71579BD25CC69A36753607AEEA2E89F38E132ED3CF7916B3C548F53C48950B957488DE2567629E16D1D21FC33415B1BA58B1929B48BA98060CFD89B8322F612FB8C0DE407618D87FD03125C0FDA2C3399C0BA6988BE425C03CDC3F38D4EA1C5F4ECDA1C5B94B6B523995C2C39DBF6510E9D295AF151DCB232AC57EEC0985CE030ABFF3D0FC7B15AE73415F07A4358AF6BE0EF7974B6936F2BDFECCB819985EECB6119AFA76B5119056B4B61156A930AD0FAEBED2B4760AD5AA2E17CC13DBA8EADAC8A44AE5561F6CA83F4B7DB18CA8AB3D7A196B44A98668635EDC697EAC3CA24E988BE723F3AF58E6C898FC7A978AED1997219C7D8E8C7DE3EF2D71A8E9D6FEC5B2482BC179AEFDAF7B29CDD7E17EAD76E565C4AF5A83B299456A9DC916D8B06E2D49711FEF54E661D4BDA7AF5983022CC4A12409A27063E422843B632537711512E6900051D5EEEA75B90DB3A5137338FDCB090E309394D5C7D646D792DC408EAB05D9AAC177AEA7D19FEA1BD281A5DB6263D14C729986A3D0BD0F939B70322BB4695B50B3BC9EA65E43518BD3A2DEA6B1DCA60EBB1D6C41DE25853875F08D05284BEA745694E9D4A92915F9B4ACE3595AC653A7442900DA69958F3AA7C5EB659B829EDA5AA07EEA78AA092A8865E5FFDCC242C2C9AC80902937869D5214E77D266CEA67AB896651D6A5B27D0804F713741C0A32458E80CF0EE63CAE56FC8C68045D4EBD7BEC4ED865248248C090B1774F4B05A372515AA63F2E562ADB3CBC0CE25AF46D0C01CC24F28A75C93E4484BAB9DD67D5C34113845CEDD213879C4B214F1EB3458E74E1B39640A9FBF245FA067B0105307EC96CF484D7B1ED96E34F78869C4596676C06593D1165B70F4F089A85C8E32946210F3F81C3AE377FF73FB2E3BF1E7A3E0000, N'6.5.1')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202410161135068_AutomaticMigration', N'triptravel.Migrations.Configuration', 0x1F8B0800000000000400ED5BDD6EDB3614BE1FB0771074B50DA995A4375B60B7489D6433D224459414DB55C148B4C385A234910AEC0D7BB25DEC91F60A3BD42F2551B62C5B4E1A04BDA9299EEF90E78F7F5FFEFBE7DFE1FBB9478D471C72E2B3917930D8370DCC1CDF256C363223317DF3A3F9FEDDB7DF0C4F5D6F6E7CCEFABD95FD4092F191792F44706459DCB9C71EE2038F38A1CFFDA91838BE6721D7B70EF7F77FB20E0E2C0C10266019C6F03A62827838FE013FC73E73702022442F7C17539EB6C3173B46352E918779801C3C3245480211A2474C0749E7814D189952149AC63125084664633A350DC4982F9080F11EDD726C8BD067333B8006446F1601867E5344394EE77154746F3BA5FD433925AB10CCA09C880BDF5B13F0E06D6A23AB2ADEC9D2666E43B0E229585B2CE4AC634B8ECC63D723805BD57434A6A1ECB5CCCA835876CF287AECE57101E123FFED19E3888A28C4238623E8033D3E45779438E77871E33F60366211A5EA08618CF0ADD4004D9F423FC0A1585CE3693AEEC98969586539AB2A988B2932C9A4264CBC3D348D4B508EEE28CE034031802DFC10FF8C190E91C0EE2724040EC17F1317C726AC69AFE83A97D08C38245309610799641A1768FE11B399B81F99F05FD3382373EC662DE9306E41106C2D8D1FE1559A6C320DF196B50CAD225056844F88F907EACF3A87502AFF1A465A5D1F10A7E4A1F7183A76C803451EEA5F91F4B7D4D6BBA60B4468EF4A6E30C55359977BD673EEB3C87BAA1CDF20BD5F33FBA933FB0685E43ED3720223BD81DD966662CFA43EC880997868B6ED050D345DA247328B5D57D1F99B1F461E442B378D6B4CE31EFC9E04C9EE71907DFD92A4C159E87BD73E55C4E20F5FC0CE332C60D4BEEEABED47A1D335FF32A88E399889BFE6A15657BE513B76FBDFABED64518A1DBE934C25EE2A3FB5CDC124B9BAA75F9660FAF4CB92B353FAFD821E1E8847FE7451C7042C005E5350ABEBCC17FE6DD87F62F4B48AB58E2442B1209C781DE328137F8D22BD775DDB5F20F765D470B9E1EF7F2698A3DF77940CC79CFB0E891D5DD9D62495BD3CD053E61A4BCB7C32647581809143E09300421DD48FCC1F6AB36F02CDB76E0568B2D894010FCC6A8E5CB11338FF096C1C3BC9E5DE187107B975BB834DDC720BA4150E655C233A86F50E12953051CF41C21C1220BA6CD815A196A92B0795C357BF9CE000339975CB7CD0466FB647A8EBCE55540CB5CA2E434B09A47AB105190112384C07207FE3B9D014DC5B8ED39ACBD330AE068BC4B3B150EF49E1845044771A2AE9056A2DD6AAE2E93D971E22BF445B01D384D04A5839E7D4008A2C5A01526C667430EA5E690550B69AE9608A85B202A238BF3EAF748BA8F4D1EE21ABB1B8AAD6E4032F59B016D2ABAA8B02937AB15A24CA93D3D4D43CBA8B57112B7916C99E4FAC86F793E1050A0228EFCA7B4ADA62D8C963CAF88DBDFEEB829760580ED73C32E4A3CD35C1FA0E27FBCA5799A42E3E2321172748A03B241798B1EB69BA25B9DC1056999652BAD69D94455AD65DFE3F1159F5D0A1A97829C8194CCB93E532DEC1288E6E908B5FB310006B764B639F461E6B2EDBCDD2CA8B830AA234B7C74ADF14549CB4A98E31B42A66A815FB9AD56BAB63D9872D3D9C57D4AD79392BC35D3CDD28DB8FB7B3EB4315216B6B8F529C88549CA2750DA4E262BF045534B7C74A76D82A4CD2D21E21BF975741F2C635722AB9772FE553D2F46CF260AB29D031FABFBEC04FAFC54BE191343D45F228B7DEA56915CDCF26DC8A2DD096422EDF79AE1F76CDA23DAFB0F155B176918DBFECB2D2A597BD2A44DAB45EF8C9635A35F67447B7270B3CF5E0B1A5D0534E2BEB07DF32E17EC22FBF265521F2C63EEBD613B9BC38226EC9E1F9B9727D77378BF6E3ECFC36B3BC9B4A1B77596192ABC8EA1668AD3124F78CA541244D3B0EB5DA41BADA25D79E1FA82B07E7617A885DCD4EAC9D6A932EA601C67924AE3CD1DA0B2EB037901D06F61F744C09CCB7E870012BCA1473915CDB9B87FB07871562E3F321195A9CBB54730950631AEEFCE1814893AE7C5A58930F5163F7B147143AF728FCCE43F3EF55B8B5197C6B207560E9BD0CF397B9331BD9BEFA26B8195895DDB6119AFAD0B4115085A5B611568989D647ACBE86A9D6852A8DCB85E1896DD0B8361A528DAAD54734E88F785F6D44E8C846CFA3469448431BC745410C8ACD587B7D9B3017CF47E65FB1C89131F9F54B22B5675C85B0F33932F68DBF5718B70B7FE7650451852EF354CBDFFAB4979761FE0ACFE479A4AFCA17D96C442A27640BD1D095F791BCE5EE9292517FC0EDC833E9C4ED68B879EF8DCBF1B5F037AA4FC30D1747A533662349233982C306EACE07DF26A19C113BDA123896F337F41A0AEE470B7E4723BD4387DD0EB688DD25C40F1D7C23E161092F64052D44A7A6442A69C91B594A1BD1295108273B6595A83E2D5ECBDA1048B4DC937E7823F56B2DC865E54F73A18E70322B20E41FEA32EC94B238EF3361533F2B269511655D6AAB8E4070AA41C7A12053E408F8EC60CE6342E2674423E872EADD6177C2AE22114402A68CBD3B5AE284CAA2B44C7F4C8E298F797815C474F36D4C018649E4C1EC8A7D880875F3719F69B6AE0D10B2DAA51B15E94B21372CB3458E74E9B39640A9F9F2227D83BD800218BF62367AC45DC676CBF1473C43CE22BB9D6C0659ED88B2D9872704CD42E4F114A390879F10C3AE377FF73F8403BF70A13E0000, N'6.5.1')
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (1, N'Hayaller Şehri Roma', CAST(N'2020-04-10T00:00:00.000' AS DateTime), N'Roma (Latince: Rōma) veya Roma komünü, İtalya''nın, Lazio bölgesinin ve aynı zamanda Roma ilinin başkentidir. Roma hem şehir hem de özel komün statüsü taşır. Tiber ve Aniene nehirleri arasında ve Akdeniz''e yakındır. Yaklaşık 2,7 milyon nüfuslu şehirde, Katoliklerin ruhani lideri Papa''nın yaşadığı bağımsız devlet Vatikan da yer almaktadır. Bu sebeple Roma''ya bazı kaynaklar tarafından iki devletin başkenti de denilmektedir.

Roma, İtalya''nın en kalabalık şehri ve 1285.3 km²lik yüzölçümüyle Avrupa''nın en geniş yüzeye yayılmış başkentlerinden biridir. Milano, Napoli, Torino, Bologna, Palermo, Katanya, Floransa, Cenova ve Bari''nin toplamından daha geniş bir yüzölçümüne sahiptir. Roma Büyükşehir''in toplam nüfusu 4 milyondur.

75 milyar avroluk gelirle İtalya''nın toplam millî hasılasının %6,5''ini tek başına kazanır.

2800 yıllık şehir, sırasıyla ve resmi adlarıyla; Roma Krallığı''nın, Roma Cumhuriyeti''nin, Roma İmparatorluğu''nun, Papalık Yönetiminin, İtalya Krallığı''nın ve İtalya Cumhuriyeti''nin merkezi ya da başkenti olmuştur.

Roma, 2019 yılında 10,1 milyon turist ile dünyanın en çok ziyaret edilen 11. şehri, Avrupa Birliği''nde en çok ziyaret edilen üçüncü şehir ve İtalya''nın en popüler turizm merkezi olmuştur.[2] 1960 Yaz Olimpiyatları''na ev sahipliği yapan Roma, aynı zamanda Gıda ve Tarım Örgütü (FAO), Dünya Gıda Programı (WFP) ve Uluslararası Tarımsal Kalkınma Fonu (IFAD) gibi Birleşmiş Milletler''in çeşitli uzman kuruluşlarına ve Akdeniz için Birlik''in Parlamenter Meclisi Sekreteryası''na da ev sahipliği yapar.[3] Önemli kuruluşların yanı sıra şehirdeki ünlü uluslararası markaların varlığı, Roma''yı önemli bir moda ve tasarım merkezi haline getirmiştir ve şehirde bulunan Cinecittà Stüdyoları birçok Akademi Ödüllü filmin seti olmuştur.[4]', N'https://travel-or-die.ru/wp-content/uploads/2019/06/Vechernie-ekskursii-s-ostanovkoj-u-Kolizeya.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (5, N'Venedik', CAST(N'2023-04-19T00:00:00.000' AS DateTime), N'Venedik (İtalyanca: Venezia [veˈnɛttsia], Venedikçe: Venexia [veˈnɛsja]), kuzeydoğu İtalya''da birbirinden kanallarla ayrılmış ve köprülerle bağlanan 118 adanın üzerine kuruludur. Şehir, kıyı şeridi boyunca uzanan Venedik Lagünü''nde, Po ve Piave nehirlerinin deltaları arasına kuruludur. Venedik doğal güzelliği, mimarisi ve sanat eserleri ile ün yapmıştır. Bu şehir bütünüyle, deniz kulağı da dahil, Dünya Mirası listesi listesindedir.

Venedik, Veneto bölgesinin başkentidir. 2009 yılında Venedik komününde 270.098 kişi yaşıyordu. (Bu nüfusun 60.000''i tarihi Venedik şehrinde, 176.000''i Mestre ve Marghera şehirlerinde, 31.000'' ise deniz kulağı üzerindeki diğer adalardadır.) Padova ve Treviso şehirleriyle birlikte oluşan Padova-Treviso-Venedik Metropolitan Bölgesi (PATREVE)''nin toplam nüfusu 1.600.000''dir. PATREVE herhangi bir özerkliği bulunmayan, sadece istatistiksel bir bölgedir.

Venedik ismi, MÖ 10. yüzyılda burada yaşayan Veneti halkından gelmektedir. Ayrıca şehir eskiden Venedik Cumhuriyeti''nin başkentiydi. Venedik "La Dominante", "Serenissima", "Adriyatiğin Kraliçesi", "Sular Şehri", "Maskelerin Şehri", "Köprülerin Şehri", "Yüzen Şehir" ve "Kanallar Şehri" olarak bilinir. Luigi Barzini The New York Times Gazetesi''nde Venedik''i "kuşkusuz bir insan tarafından yapılan en güzel şehir" ayrıca Times Online Gazetesi de "Avrupa''nın en romantik şehri" olarak tanımlamışlardır.

Venedik Cumhuriyeti Orta Çağ ve Rönesans dönemi boyunca denizlerdeki en önemli kuvvet olduğu kadar 13. yüzyıldan 17. yüzyılın sonlarına kadar sanatın ve ticaretin merkeziydi. Tarihi boyunca, özellikle Rönesans Döneminde, birçok sanatsal hareket olmuştur. Venedik tarihi boyunca senfonik müzik ve operanın gelişiminde önemli rol oynayan, aynı zamanda Antonio Vivaldi''nin doğduğu şehirdir.', N'https://i.hizliresim.com/dzr5gs8.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (6, N'Mersin Cennet-Cehennem Mağaraları', CAST(N'2024-08-12T00:00:00.000' AS DateTime), N'Cennet ve Cehennem Çökükleri veya Cennet ve Cehennem Obrukları, Silifke ilçe merkezine 25 km mesafede Antik Narlıkuyu Limanının 2 km kuzeybatısında, Korykos''un (Kızkalesi) 5 km batısında yer almaktadır. Yer altı sularının uzun yıllar boyunca kireç tabakasını eriterek içerisindeki suyun boşalması ile altı oyulan tavan yapısının çökmesiyle meydana gelmiş doğal obruk oluşumlardır.[1]

Cennet ve Cehennem çukuru arasında 80 metre mesafe vardır.', N'https://i.hizliresim.com/eodgp3x.png?_gl=1*10yqo86*_ga*MTk3NDk4MTk4MC4xNzI4OTk4MDAy*_ga_M9ZRXYS2YN*MTcyOTQ5MTgyNy4yLjEuMTcyOTQ5MTkyMC4zMC4wLjA.')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (7, N'İzmir Saat Kulesi', CAST(N'2024-08-27T00:00:00.000' AS DateTime), N'İzmir Saat Kulesi, İzmir''de Osmanlı padişahı II. Abdülhamid''in tahta çıkışının 25. yıldönümünü kutlamak için 1901''de inşa edilmiş tarihî saat kulesidir. İzmir''in simgesi hâline gelmiştir.

Konak Meydanı''ndaki İzmir Hükûmet Konağı, Kemeraltı Çarşısı girişi, Konak Yalı Camii ve İzmir Büyükşehir Belediyesi binası arasındaki alanda yer alır. 25 metre yüksekliğinde ve dört katlı olan kule, Sultan II. Abdülhamid''in iradesi gereği Osmanlı vilayetlerinde aynı dönemde meydana getirilmiş birçok saat kulesinden birisidir. Ancak özgün mimarisi ve yapımında izlenen yöntem nedeniyle diğer saat kuleleri arasında özel bir yer edinmiştir.[1] Osmanlı saat kuleleri içinde en estetik görünüşlü ve en zarifi olarak kabul edilir.[2]

Fransız mimar Raymond Charles Péré tarafından tasarlanan kulenin saatinin Alman İmparatoru II. Wilhelm tarafından hediye edildiğine dair kayıtlar vardır.', N'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/db/d5/b2/saat-kulesi.jpg?w=1200&h=-1&s=1')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (8, N'Bir Sonraki Rota:Londra', CAST(N'2024-09-21T00:00:00.000' AS DateTime), N'İngiltere''nin ve Birleşik Krallık''ın başkenti ve en kalabalık şehridir. Büyük Britanya adasının güneydoğusundaki Thames Nehri üzerinde duran Londra, iki bin yıldır büyük bir yerleşim yeri olmuştur. Londra, Londra Belediye Başkanı ve Londra Meclisi tarafından yönetilmektedir.

Londra, sanat, ticaret, eğitim, eğlence, moda, finans, sağlık, medya, profesyonel hizmetler, araştırma ve geliştirme, turizm ve ulaşım alanlarında dünyanın önde gelen şehirlerinden biridir. Dünyanın en büyük finans merkezlerinden biridir ve dünyanın beşinci büyükşehir bölgesi GSYİH''sine sahiptir. Londra genellikle bir dünya kültür başkenti olarak kabul edilir. Uluslararası gelişlerle ölçülen dünyanın en çok ziyaret edilen şehri ve yolcu trafiği ile ölçülen dünyanın en büyük şehir havaalanı sistemine sahip. Dünyanın önde gelen yatırım hedefleri arasında yer alıyor ve daha fazla uluslararası perakendeciye ve ultra yüksek net değerli bireylere ev sahipliği yapıyor. Londra''daki üniversiteler, Avrupa''nın en büyük yükseköğretim enstitülerinden oluşuyor.

2016 yılı ortası belediye nüfusu, Birleşik Krallık nüfusunun %13.4''ünü oluşturan 9 milyondur. Londra 2021 yılı itibarıyla İstanbul, Moskova ve Paris''ten sonra Avrupa''nın en kalabalık dördüncü şehridir.[2] Londra, 1731''den 1925''e kadar dünyanın en kalabalık şehriydi.

Londra dört Dünya Miras Alanı içerir: Londra Kalesi, Kew Bahçeleri, Westminster Sarayı, Westminster Abbey ve Azize Margaret Kilisesi ve Greenwich. Diğer görülecek yerler arasında Buckingham Sarayı, London Eye, Piccadilly Circus, Aziz Paul Katedrali, Tower Bridge, Big Ben, Windsor Şatosu, British Museum, National Gallery, Londra Zindanı, Hyde Park, Trafalgar Meydanı ve The Shard yer almaktadır. Londra metrosu, dünyanın en eski yeraltı demiryolu ağıdır.', N'https://www.buseterim.com.tr/upload/default/2024/2/16/680.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (9, N'Brüksel', CAST(N'2022-03-30T00:00:00.000' AS DateTime), N'Belçika''nın başkenti ve üç federal bölgesinden biridir. Birkaç yüzyıl önce bataklığın kurutulması sonucu ortaya çıkmış bir şehirdir. Adı bataklığın içindeki yerleşim yeri anlamına gelir. Brüksel büyükşehrine bağlı 19 belediyenin (Fransızca: Communes, Felemenkçe: Gemeenten) toplam nüfusu 1.191.604''tir (2017). Büyükşehrin bir parçası haline gelmiş civar belediyelerin nüfusu ve gün içinde işleri için Brüksel''e gelenlerin (Brüksel''de çalışan nüfus) miktarı da göz önüne alındığında toplam kapsamlı nüfusun birkaç milyona çıktığı hesaplanmaktadır.

Avrupa Birliği''nin 3 ana kurumu olan AB Komisyonu, AB Bakanlar Konseyi ve Avrupa Parlamentosu içinde ilk ikisinin resmî organlarının büyük çoğunluğu Brüksel''de yerleşiktir. Sonuncusu Avrupa Parlamentosu ise Strazburg ile dönüşümlü olarak Brüksel''de çalışmalarını yürütmektedir. Bunlara bağlı ve bunlarla ilgili irili ufaklı yüzlerce kuruluş da dikkate alındığında Brüksel, bu sebeplerden Avrupa Birliği veya Avrupa başkenti olarak gösterilir. Ayrıca NATO Merkez Karargahı da Brüksel''dedir.

Nüfusun çoğunluğunun anadili Fransızcadır (%80). Brüksel kökenli veya Brüksel''e Flaman bölgesinden gelmiş ve Felemenkçe konuşan bir azınlık da bulunmaktadır (20%). Bu yönden Brüksel (aslen bir Flaman şehri olmasına rağmen) bir Flaman denizinin ortasında bir Fransız adası gibidir. Bu demografik özelliğe rağmen Brüksel''de iki resmî dil Fransızca ve Felemenkçe''dir ve hukuken eşit ve her alanda zorunludur.

Belçika vatandaşlığını edinmek diğer AB ülkelerine kıyasla çok daha kolay olduğu için 1960''lardan itibaren kayda değer bir yabancı kökenli nüfus da Brüksel''e yerleşmiştir. Başlangıçta genellikle vasıfsız göçmen işçi olarak gelen bu kuşak ve ardından ikinci ve üçüncü nesiller içinde, başta Faslılar, ardından, aşağı yukarı denk sayıda, çoğu Emirdağ kökenli Türkler ve eski bir Belçika sömürgesi olan Kongo''lu Afrikalılar köken sıralamasında ilk üçü oluşturmaktadırlar. 1970''lerden itibaren özellikle AB resmî kurumlarının sağladığı iş imkânları nedeniyle yabancı kökenli nüfusa, AB ülkeleri kökenli ve daha kalifiye bir topluluk da eklenmiştir ve sayıları artmaktadır.

Brüksel nüfusuna bu yollarla dahil olmuş yabancı kökenlilerin toplam nüfusun %28.5''ini oluşturduğu hesaplanmaktadır. İstanbul ile benzerlikler arz eden bu süreç sonrasında son 30-40 yılda Batı Avrupa''da nüfus, kültür ve mimari yapısı Brüksel kadar değişmiş kent yoktur denilebilir. Bu süreç içinde bir gettolaşma da doğmuş, yerli Brükselliler belli semtlerde ağırlıklarını muhafaza eder, buralara adeta ''çekilir''ken, Faslı, Türk ve Afrikalı semtleri ve bir AB kurumları ve çalışanları mahallesi oluşmuştur.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Grand_Place_Bruselas_2.jpg/800px-Grand_Place_Bruselas_2.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (10, N'Amsterdam', CAST(N'2023-09-08T00:00:00.000' AS DateTime), N'Amsterdam, Hollanda''nın başkenti ve ülkenin en yüksek nüfuslu şehridir. Ancak Hollanda, hükûmetin ve meclisin bulunduğu Lahey''den yönetilir. Şehir, ülkenin batısında, Kuzey Hollanda eyaletinde yer almaktadır. 12. yüzyılda Amstel ırmağının kıyısında bir balıkçı köyü olarak kurulan Amsterdam, Hollanda''nın kişi sayısı bakımından en büyük, kültürel ve parasal yönden de en önemli kentidir. Şehir merkezinde 2018 sayımına göre 872.680 kişi yaşasa da, şehir sınırları içinde bu sayı 1.558.755 ve metropoliten bölgede 2.480.394''tür.

Adı, ilk kurulduğu zamanlarda Amstel ırmağının üzerine kurulan su bendi ("dam") olan Amstelredamme''ın zamanla Amsterdam olmasından gelir.

Amsterdam, çoğunlukla 17. yüzyıldan kalma yapılarıyla, Avrupa''daki en köklü kent dokularından birini barındırır. Kentin eski bölümü iç içe geçmiş ay biçimindeki kanallardan oluşur. Bu kanalların iki yakasındaki tarihî evlerin bir bölümü bugün ev, geri kalanı ise, kamu ya da özel işyeri olarak kullanılır. Özellikle, Amsterdam''da bulunan Dam Meydanı çok ünlüdür ve dünyanın birçok yerinden ziyaretçi akınına uğramaktadır.

Hollanda''nın birçok yerinde olduğu gibi, Amsterdam''da da kanallar bataklık olan bölgede öncelikle suları denetim altına almak için kazılmıştır. Bunun yanı sıra savunma ile ulaşım için de kullanılmıştır. Bazı kanalların üzerinde tekne evler bulunur. Bunlar genellikle eski tekneler ya da baştan ev olarak tasarlanmış teknelerdir. İlk olarak 60''lı 70''li yıllardaki konut sıkıntısının sonucu olarak ortaya çıkan tekne evler, bugünlerde yalnızca zorunluluktan değil, daha çok bir yaşam tarzı yeğlemesi olarak öne çıkmaktadır.

Ünlü Amsterdam sakinleri arasında Anne Frank, ressam Rembrandt van Rijn ve Vincent van Gogh adlı sanatçılar ve filozof Baruch Spinoza yer almaktadır. Kraliyet Concertgebouw Orkestrası da Amsterdam''da bulunur.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN-RZVfvUfcr_x4k638j_OOdse7HDHKeVsqQ&s')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (11, N'Sakin Kent: Bamberg', CAST(N'2024-10-10T00:00:00.000' AS DateTime), N'Bamberg Freistaat Bavyera''de Yukarı Franken''de yer alan küçük bir Alman şehridir. Aynı zamanda Bamberg, 200.000 nüfuslu bir metropol bölgesinin ve Yukarı Franken''in en önemli merkezidir. Bamberg, Amerika Birleşik Devletleri Ordusu''nun bakmakla yükümlü olduğu 4.100''den fazla olmak üzere yaklaşık 7.000 yabancı uyruklu insana ev sahipliği yapmaktadır. 1973 yılında kuruluşunun 1000. yılını kutlamıştır. 1993''te UNESCO tarafından koruma altına alınmıştır.[1] Bamberg şehri dumanlı birasıyla ünlü olup kişi başına yılda 300 litre bira tüketimiyle dünyanın en fazla bira içilen şehirlerinden biridir.

Bamberg II. Dünya Savaşı''nın bitiminden sonra ABD işgal bölgesine ait oldu. Almanya''da II. Dünya Savaşı sırasında bombalanmayan ve en az hasar gören birkaç şehirden biridir.', N'https://www.discover-bavaria.com/kampagne_juli_2020/3134/image-thumb__3134__open-graph/Bamberg_4000x2000.jpg')
INSERT [dbo].[Blogs] ([ID], [Baslik], [Tarih], [Aciklama], [BlogImage]) VALUES (16, N'das', CAST(N'2024-10-10T00:00:00.000' AS DateTime), N'Bamberg Freistaat Bavyera''de Yukarı Franken''de yer alan küçük bir Alman şehridir. Aynı zamanda Bamberg, 200.000 nüfuslu bir metropol bölgesinin ve Yukarı Franken''in en önemli merkezidir. Bamberg, Amerika Birleşik Devletleri Ordusu''nun bakmakla yükümlü olduğu 4.100''den fazla olmak üzere yaklaşık 7.000 yabancı uyruklu insana ev sahipliği yapmaktadır. 1973 yılında kuruluşunun 1000. yılını kutlamıştır. 1993''te UNESCO tarafından koruma altına alınmıştır.[1] Bamberg şehri dumanlı birasıyla ünlü olup kişi başına yılda 300 litre bira tüketimiyle dünyanın en fazla bira içilen şehirlerinden biridir.

Bamberg II. Dünya Savaşı''nın bitiminden sonra ABD işgal bölgesine ait oldu. Almanya''da II. Dünya Savaşı sırasında bombalanmayan ve en az hasar gören birkaç şehirden biridir.', N'')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Hakkimizdas] ON 

INSERT [dbo].[Hakkimizdas] ([ID], [FotoUrl], [Aciklama]) VALUES (1, N'https://i.pinimg.com/originals/00/11/6e/00116e1d26333e8089dec56a8a62095b.jpg', N'selam')
INSERT [dbo].[Hakkimizdas] ([ID], [FotoUrl], [Aciklama]) VALUES (2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hakkimizdas] OFF
GO
SET IDENTITY_INSERT [dbo].[Yorumlars] ON 

INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (1, N'zeynep', N'zeynep33@gmail.com', N'Geçen yıl Roma''ya gitmiştim harika bir şehir.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (2, N'alihandro', N'alihandro88@gmail.com', N'Dünyanın 8.Harikası', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (3, N'velicehver', N'velicevher@gmail.com', N'vay be cehennemin dibini gördük!', 6)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (4, NULL, N'velicevher@gmail.com', N'vay be cehennemin dibini gördük!', 6)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (5, NULL, N'aliay@hotmail.com', N'süper!', 5)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (6, N'ahmet', N'ahmeteren@gmail.com', N'müthiş bir şeysin.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (7, N'ahmet', N'ahmeteren@gmail.com', N'müthiş bir şeysin.', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (8, N'arı', N'arı@gmail.com', N'genç yaşımda gözüm neler gördü vay be!', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (9, N'asdsad', N'gdfafasas', N'sdadasdasasgsgd', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (10, N'asdsad', N'gdfafasas', N'sdadasdasasgsgd', 1)
INSERT [dbo].[Yorumlars] ([ID], [KullaniciAdi], [Mail], [Yorum], [Blogid]) VALUES (11, N'asdsad', N'gdfafasas', N'sdadasdasasgsgd', 1)
SET IDENTITY_INSERT [dbo].[Yorumlars] OFF
GO
/****** Object:  Index [IX_Blogid]    Script Date: 16.11.2024 17:38:51 ******/
CREATE NONCLUSTERED INDEX [IX_Blogid] ON [dbo].[Yorumlars]
(
	[Blogid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid] FOREIGN KEY([Blogid])
REFERENCES [dbo].[Blogs] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_dbo.Yorumlars_dbo.Blogs_Blogid]
GO
USE [master]
GO
ALTER DATABASE [TravelDb] SET  READ_WRITE 
GO
