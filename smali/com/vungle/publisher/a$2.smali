.class public final Lcom/vungle/publisher/a$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/p;

.field final synthetic b:Lcom/vungle/publisher/a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/a;Lcom/vungle/publisher/p;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iput-object p2, p0, Lcom/vungle/publisher/a$2;->a:Lcom/vungle/publisher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 219
    const-string v0, "VungleAd"

    const-string v2, "AdManager.playAd()"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v4, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v5, p0, Lcom/vungle/publisher/a$2;->a:Lcom/vungle/publisher/p;

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/vungle/publisher/a;->a(Z)Lcom/vungle/publisher/dn;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/vungle/publisher/dn;->h_()Lcom/vungle/publisher/cj;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v4, v0, v5}, Lcom/vungle/publisher/a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/hu;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_2
    const-string v4, "VungleAd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "next ad "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-nez v2, :cond_4

    .line 226
    :try_start_1
    const-string v0, "VungleAd"

    const-string v1, "no ad to play"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->d:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/bl;

    invoke-direct {v1}, Lcom/vungle/publisher/bl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 247
    :goto_4
    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->l:Lcom/vungle/publisher/yc;

    invoke-virtual {v0}, Lcom/vungle/publisher/yc;->c()V

    .line 251
    :cond_0
    :goto_5
    return-void

    .line 224
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->z()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 230
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->i:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/a$b;->register()V

    .line 232
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v3, v0, Lcom/vungle/publisher/a;->b:Landroid/content/Context;

    instance-of v0, v2, Lcom/vungle/publisher/jk;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->e:Ljava/lang/Class;

    :goto_6
    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const/high16 v0, 0x30000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->a:Lcom/vungle/publisher/p;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "adConfig"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "adConfig"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    const-string v3, "adId"

    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v0, "adType"

    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->f()Lcom/vungle/publisher/j;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_4

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->f:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :goto_7
    :try_start_4
    iget-object v2, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v2, v2, Lcom/vungle/publisher/a;->r:Lcom/vungle/publisher/gm$a;

    const-string v3, "VungleAd"

    const-string v4, "error launching ad"

    invoke-virtual {v2, v3, v4, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->d:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/bp;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/vungle/publisher/bp;-><init>(Lcom/vungle/publisher/cj;Z)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->l:Lcom/vungle/publisher/yc;

    invoke-virtual {v0}, Lcom/vungle/publisher/yc;->c()V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lcom/vungle/publisher/a$2;->b:Lcom/vungle/publisher/a;

    iget-object v1, v1, Lcom/vungle/publisher/a;->l:Lcom/vungle/publisher/yc;

    invoke-virtual {v1}, Lcom/vungle/publisher/yc;->c()V

    throw v0

    .line 242
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :cond_6
    move-object v2, v1

    goto/16 :goto_0
.end method
