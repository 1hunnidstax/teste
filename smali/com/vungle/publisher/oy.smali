.class public final Lcom/vungle/publisher/oy;
.super Lcom/vungle/publisher/ne;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/oy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ne",
        "<",
        "Lcom/vungle/publisher/jk",
        "<***>;>;"
    }
.end annotation


# instance fields
.field k:Lcom/vungle/publisher/oy$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/agg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/op$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/ob$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private o:Lcom/vungle/publisher/op;

.field private p:Lcom/vungle/publisher/ob;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vungle/publisher/ne;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/mr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/mr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/oy;->k:Lcom/vungle/publisher/oy$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/oy$a$a;->a(Lcom/vungle/publisher/oy;)Lcom/vungle/publisher/oy$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    check-cast p2, Lcom/vungle/publisher/jk;

    :try_start_0
    const-string v4, "VungleAd"

    const-string v5, "create video ad"

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/ne;->a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/jk;->u()Lcom/vungle/publisher/jj;

    move-result-object v5

    invoke-interface {p3}, Lcom/vungle/publisher/n;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v6

    sget-object v4, Lcom/vungle/publisher/oy$1;->a:[I

    invoke-virtual {v6}, Lcom/vungle/publisher/Orientation;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    iget-object v4, v5, Lcom/vungle/publisher/jj;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v5, Lcom/vungle/publisher/jj;->n:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v5, Lcom/vungle/publisher/jj;->n:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v5, Lcom/vungle/publisher/jj;->g:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v4, v7, :cond_2

    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (landscape)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    :goto_1
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    iget-object v2, p0, Lcom/vungle/publisher/oy;->m:Lcom/vungle/publisher/op$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "videoFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/op;

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/vungle/publisher/op$a;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/op;

    :cond_0
    invoke-virtual {p2}, Lcom/vungle/publisher/jk;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/vungle/publisher/jk;->u()Lcom/vungle/publisher/jj;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object p3, v1, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    iput-object v4, v1, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    invoke-static {v1, v2}, Lcom/vungle/publisher/op;->a(Lcom/vungle/publisher/op;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/vungle/publisher/oy;->o:Lcom/vungle/publisher/op;

    instance-of v1, p2, Lcom/vungle/publisher/eo;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/vungle/publisher/eo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/vungle/publisher/eo;->p()Lcom/vungle/publisher/ep;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/vungle/publisher/ep;->j:Lcom/vungle/publisher/lg$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ep;->B()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/lg$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/lg;

    move-result-object v2

    iget-object v4, p0, Lcom/vungle/publisher/oy;->n:Lcom/vungle/publisher/ob$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/jk;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, p1, v1, v2, p3}, Lcom/vungle/publisher/ob$a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/lk;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mv;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ob;

    iput-object v1, p0, Lcom/vungle/publisher/oy;->p:Lcom/vungle/publisher/ob;

    :cond_1
    const-string v1, "postRollFragment"

    iget-object v2, p0, Lcom/vungle/publisher/oy;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/vungle/publisher/oy;->c()V

    :goto_3
    return-void

    :pswitch_0
    const-string v2, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/vungle/publisher/oy;->h:Lcom/vungle/publisher/gm$a;

    const-string v4, "VungleAd"

    const-string v5, "error playing video ad"

    invoke-virtual {v2, v4, v5, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v3}, Lcom/vungle/publisher/oy;->a(ZZ)V

    goto :goto_3

    :cond_2
    move v4, v3

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v4, v5, Lcom/vungle/publisher/jj;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/vungle/publisher/jj;->n:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/vungle/publisher/jj;->g:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Lcom/vungle/publisher/jj;->n:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    :goto_4
    if-eqz v2, :cond_5

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (portrait)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    goto/16 :goto_1

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    const-string v2, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (unknown) --> auto-rotate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/vungle/publisher/oy;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected final b()Lcom/vungle/publisher/afx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/afx",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/oy;->l:Lcom/vungle/publisher/agg$a;

    iget-object v0, p0, Lcom/vungle/publisher/oy;->a:Lcom/vungle/publisher/cj;

    check-cast v0, Lcom/vungle/publisher/jk;

    iget-object v2, v1, Lcom/vungle/publisher/agg$a;->a:Lcom/vungle/publisher/agg;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/agg;->a(Lcom/vungle/publisher/cj;)V

    iget-object v0, v1, Lcom/vungle/publisher/agg$a;->a:Lcom/vungle/publisher/agg;

    return-object v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/oy;->p:Lcom/vungle/publisher/ob;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/oy;->a(ZZ)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/oy;->g:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/aj;

    invoke-direct {v1}, Lcom/vungle/publisher/aj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/vungle/publisher/oy;->p:Lcom/vungle/publisher/ob;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/oy;->a(Lcom/vungle/publisher/ms;)V

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/oy;->o:Lcom/vungle/publisher/op;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/vungle/publisher/oy;->c()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/oy;->o:Lcom/vungle/publisher/op;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/oy;->a(Lcom/vungle/publisher/ms;)V

    goto :goto_0
.end method
