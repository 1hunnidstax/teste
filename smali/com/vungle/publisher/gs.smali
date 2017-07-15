.class public final Lcom/vungle/publisher/gs;
.super Lcom/vungle/publisher/dm;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dm;",
        "Lcom/vungle/publisher/dn",
        "<",
        "Lcom/vungle/publisher/gs;",
        ">;"
    }
.end annotation


# instance fields
.field q:Ljava/lang/String;

.field r:Lcom/vungle/publisher/gs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field v:Lcom/vungle/publisher/ln$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/dm;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/vungle/publisher/dm;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 56
    const-string v1, "html_content"

    iget-object v2, p0, Lcom/vungle/publisher/gs;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/gs;->r:Lcom/vungle/publisher/gs$a;

    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/gs;->r:Lcom/vungle/publisher/gs$a;

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/dm;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gg",
            "<",
            "Lcom/vungle/publisher/gs;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final g_()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic h_()Lcom/vungle/publisher/cj;
    .locals 0

    .prologue
    .line 20
    return-object p0
.end method

.method public final synthetic p()Lcom/vungle/publisher/lk;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/gs;->v:Lcom/vungle/publisher/ln$a;

    iget-object v1, p0, Lcom/vungle/publisher/gs;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ln$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/ln;

    move-result-object v0

    return-object v0
.end method
