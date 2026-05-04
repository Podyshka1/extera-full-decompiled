.class public final synthetic Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/CallLogActivity$9;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/CallLogActivity$9;ZLjava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/CallLogActivity$9;

    iput-boolean p2, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/CallLogActivity$9;

    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$9$$ExternalSyntheticLambda1;->f$2:Ljava/util/HashSet;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/CallLogActivity$9;->$r8$lambda$4_K1mhNABXW3GEbLlg6HHgbV6sM(Lorg/telegram/ui/CallLogActivity$9;ZLjava/util/HashSet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
