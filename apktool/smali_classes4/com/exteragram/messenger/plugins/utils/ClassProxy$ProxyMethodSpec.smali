.class public Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/utils/ClassProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyMethodSpec"
.end annotation


# instance fields
.field public final argumentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final implementation:Ljava/lang/String;

.field public final modifiers:I

.field public final mvelCode:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final overrideExisting:Z

.field public final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    const-wide v0, -0x531321ab1c0974dbL    # -2.7679312576928585E-92

    .line 84
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v10}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;IZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;IZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->returnType:Ljava/lang/Class;

    .line 90
    iput-object p3, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->parameterTypes:[Ljava/lang/Class;

    .line 91
    iput p4, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->modifiers:I

    .line 92
    iput-boolean p5, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->overrideExisting:Z

    .line 93
    iput-object p6, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->implementation:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->mvelCode:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->argumentNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isMvel()Z
    .locals 2

    const-wide v0, -0x531321b21c0974dbL    # -2.7679210165258326E-92

    .line 99
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->implementation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->mvelCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
