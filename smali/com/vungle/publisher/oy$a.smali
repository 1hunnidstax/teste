.class public final Lcom/vungle/publisher/oy$a;
.super Lcom/vungle/publisher/mr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/oy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/oy$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mr",
        "<",
        "Lcom/vungle/publisher/oy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/vungle/publisher/mr;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/ah;)V
    .locals 3

    .prologue
    .line 190
    const-string v0, "VungleEvent"

    const-string v1, "postRoll.onCancel()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/oy$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/oy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/oy;->a(ZZ)V

    .line 192
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ai;)V
    .locals 2

    .prologue
    .line 175
    const-string v0, "VungleEvent"

    const-string v1, "postRoll.onRepeat()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/oy$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/oy;

    invoke-virtual {v0}, Lcom/vungle/publisher/oy;->d()V

    .line 177
    return-void
.end method

.method public final bridge synthetic onEvent(Lcom/vungle/publisher/ak;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/vungle/publisher/mr;->onEvent(Lcom/vungle/publisher/ak;)V

    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/av;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "VungleEvent"

    const-string v1, "video.onCancel()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/oy$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/oy;

    invoke-virtual {v0}, Lcom/vungle/publisher/oy;->c()V

    .line 182
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/aw;)V
    .locals 2

    .prologue
    .line 185
    const-string v0, "VungleEvent"

    const-string v1, "video.onNext()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/oy$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/oy;

    invoke-virtual {v0}, Lcom/vungle/publisher/oy;->c()V

    .line 187
    return-void
.end method

.method public final bridge synthetic onEvent(Lcom/vungle/publisher/bd;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/vungle/publisher/mr;->onEvent(Lcom/vungle/publisher/bd;)V

    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/w;)V
    .locals 9
    .param p1, "event"    # Lcom/vungle/publisher/w;

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v5, p1, Lcom/vungle/publisher/w;->a:Lcom/vungle/publisher/jl$a;

    .line 170
    const-string v0, "VungleEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "cta click event: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/oy$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/oy;

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, v0, Lcom/vungle/publisher/oy;->a:Lcom/vungle/publisher/cj;

    check-cast v1, Lcom/vungle/publisher/jk;

    invoke-virtual {v1}, Lcom/vungle/publisher/jk;->s()Ljava/lang/String;

    move-result-object v4

    const-string v1, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "call to action destination "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/vungle/publisher/agp;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/vungle/publisher/oy;->g:Lcom/vungle/publisher/ql;

    new-instance v7, Lcom/vungle/publisher/x;

    iget-object v8, v0, Lcom/vungle/publisher/oy;->a:Lcom/vungle/publisher/cj;

    invoke-direct {v7, v8, v5}, Lcom/vungle/publisher/x;-><init>(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/jl$a;)V

    invoke-virtual {v6, v7}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vungle/publisher/oy;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v5, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/oy;->a(ZZ)V

    .line 172
    return-void

    .line 171
    :catch_0
    move-exception v1

    iget-object v5, v0, Lcom/vungle/publisher/oy;->h:Lcom/vungle/publisher/gm$a;

    const-string v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "error loading call-to-action URL "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v3

    goto :goto_0
.end method
