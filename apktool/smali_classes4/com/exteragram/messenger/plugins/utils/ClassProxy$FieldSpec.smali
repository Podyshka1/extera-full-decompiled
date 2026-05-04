.class public Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/utils/ClassProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSpec"
.end annotation


# instance fields
.field public final methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final modifiers:I

.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->name:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->type:Ljava/lang/Class;

    .line 116
    iput p3, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->modifiers:I

    .line 117
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->methods:Ljava/util/List;

    return-void
.end method
