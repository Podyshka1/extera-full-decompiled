.class Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PluginsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/exteragram/messenger/plugins/PluginsController;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/exteragram/messenger/plugins/PluginsController;
    .locals 1

    .line 0
    sget-object v0, Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;->INSTANCE:Lcom/exteragram/messenger/plugins/PluginsController;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 935
    new-instance v0, Lcom/exteragram/messenger/plugins/PluginsController;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/PluginsController;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/PluginsController$SingletonHolder;->INSTANCE:Lcom/exteragram/messenger/plugins/PluginsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
