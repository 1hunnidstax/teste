.class Lcom/inmobi/ads/ao$3;
.super Ljava/lang/Object;
.source "NativeV2Inflater.java"

# interfaces
.implements Lcom/inmobi/ads/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->w()V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/at;->b(Lcom/inmobi/ads/av;)V

    .line 85
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/ads/av;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/av;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 134
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V

    .line 43
    :cond_0
    return-void
.end method

.method public b(Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/at;->c(Lcom/inmobi/ads/av;)V

    .line 92
    :cond_0
    return-void
.end method

.method public b(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/at;->b(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V

    .line 50
    :cond_0
    return-void
.end method

.method public c(Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/at;->d(Lcom/inmobi/ads/av;)V

    .line 99
    :cond_0
    return-void
.end method

.method public d(Lcom/inmobi/ads/av;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/inmobi/ads/ao$3;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/at;->g(Lcom/inmobi/ads/av;)V

    .line 127
    :cond_0
    return-void
.end method
