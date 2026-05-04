.class public abstract Lcom/exteragram/messenger/api/db/ExteraDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

.field private static volatile INSTANCE:Lcom/exteragram/messenger/api/db/ExteraDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/exteragram/messenger/api/db/ExteraDatabase;
    .locals 1

    .line 25
    sget-object v0, Lcom/exteragram/messenger/api/db/ExteraDatabase;->INSTANCE:Lcom/exteragram/messenger/api/db/ExteraDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/exteragram/messenger/api/db/ExteraDatabase;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/exteragram/messenger/api/db/ExteraDatabase;->INSTANCE:Lcom/exteragram/messenger/api/db/ExteraDatabase;

    return-void
.end method


# virtual methods
.method public abstract addedRegDateDao()Lcom/exteragram/messenger/api/db/AddedRegDateDao;
.end method

.method public abstract boostySubscriberDao()Lcom/exteragram/messenger/api/db/BoostySubscriberDao;
.end method

.method public abstract profileDao()Lcom/exteragram/messenger/api/db/ProfileDao;
.end method
