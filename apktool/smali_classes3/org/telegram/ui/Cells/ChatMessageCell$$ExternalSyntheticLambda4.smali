.class public final synthetic Lorg/telegram/ui/Cells/ChatMessageCell$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->$r8$lambda$V7hXBEEF4IOClaZfAJW80oU5i9w(Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;)I

    move-result p1

    return p1
.end method
