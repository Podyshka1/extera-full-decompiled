.class public Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/utils/ClassProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldMethodSpec"
.end annotation


# instance fields
.field public final getter:Z

.field public final modifiers:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->name:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->modifiers:I

    .line 129
    iput-boolean p3, p0, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->getter:Z

    return-void
.end method
