.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$3:J

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iput-wide p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$3:J

    iput-boolean p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$78;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$3:J

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$78$$ExternalSyntheticLambda3;->f$4:Z

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$78;->$r8$lambda$wn8_KgobA1NuXK76IlhXghlMLBU(Lorg/telegram/ui/Components/ChatActivityEnterView$78;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;JZ)V

    return-void
.end method
