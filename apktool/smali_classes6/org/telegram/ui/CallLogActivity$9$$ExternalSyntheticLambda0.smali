.class public final synthetic Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity$9;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity$9;Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/CallLogActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p3, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/CallLogActivity$9;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/CallLogActivity$9;->$r8$lambda$WiTmK9RHep8i3bW5RBtpGuM-IXQ(Lorg/telegram/ui/CallLogActivity$9;Lorg/telegram/tgnet/TLRPC$User;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
