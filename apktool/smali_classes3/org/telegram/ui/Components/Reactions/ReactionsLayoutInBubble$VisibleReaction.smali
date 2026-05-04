.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleReaction"
.end annotation


# instance fields
.field public documentId:J

.field public effectId:J

.field public emojicon:Ljava/lang/String;

.field public hash:J

.field public isEffect:Z

.field public isStar:Z

.field public premium:Z

.field public sticker:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asStar()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 2

    .line 1675
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    const/4 v1, 0x1

    .line 1676
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    return-object v0
.end method

.method public static fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 1750
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 1751
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 1752
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0
.end method

.method public static fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    if-nez p0, :cond_0

    .line 1730
    const-string p0, ""

    .line 1733
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 1734
    const-string v1, "animated_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 1736
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 1737
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1739
    :catch_0
    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1740
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0

    .line 1743
    :cond_1
    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1744
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0
.end method

.method public static fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 1722
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 1723
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1724
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0
.end method

.method public static fromTL(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 3

    .line 1681
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 1682
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionPaid;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    .line 1683
    iput-boolean p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    return-object v0

    .line 1684
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v1, :cond_1

    .line 1685
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1686
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long v1, p0

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    return-object v0

    .line 1687
    :cond_1
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v1, :cond_2

    .line 1688
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 1689
    iput-wide v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    :cond_2
    return-object v0
.end method

.method public static fromTL(Lorg/telegram/tgnet/TLRPC$TL_availableEffect;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 8

    .line 1696
    new-instance v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    const/4 v1, 0x1

    .line 1697
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isEffect:Z

    .line 1698
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->effectId:J

    .line 1699
    iget-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_animation_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->sticker:Z

    .line 1700
    iget-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->effect_sticker_id:J

    iput-wide v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    .line 1701
    iput-wide v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    .line 1702
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->premium_required:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->premium:Z

    .line 1703
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_availableEffect;->emoticon:Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1759
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1760
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1761
    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iget-wide v4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public flatten()Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 4

    .line 1779
    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1780
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    .line 1781
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1783
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSame(Lorg/telegram/tgnet/TLRPC$Reaction;)Z
    .locals 6

    .line 1770
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v0, :cond_0

    .line 1771
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 1772
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1773
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public toCharSequence(I)Ljava/lang/CharSequence;
    .locals 5

    .line 1825
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p1, p1

    .line 1826
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1827
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1828
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 1829
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 1832
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    const-string/jumbo v2, "\ud83d\ude00"

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1833
    new-instance v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    .line 1834
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v3, 0x11

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method public toCharSequence(Landroid/graphics/Paint$FontMetricsInt;)Ljava/lang/CharSequence;
    .locals 4

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    return-object p1

    .line 1818
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, "\ud83d\ude00"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1819
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {v1, v2, v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    .line 1820
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1792
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    return-object v0

    .line 1794
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1795
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1797
    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1800
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisibleReaction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;
    .locals 3

    .line 1708
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->isStar:Z

    if-eqz v0, :cond_0

    .line 1709
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionPaid;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionPaid;-><init>()V

    return-object v0

    .line 1711
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1712
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    .line 1713
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    return-object v0

    .line 1716
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;-><init>()V

    .line 1717
    iget-wide v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    return-object v0
.end method
