.class final Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Extensions30ExtImpl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    invoke-direct {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;-><init>()V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo$Extensions30ExtImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdExtServicesVersionS()I
    .locals 1

    const/16 v0, 0x1f

    .line 52
    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    return v0
.end method
