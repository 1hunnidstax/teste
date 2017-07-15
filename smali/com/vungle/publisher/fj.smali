.class public final Lcom/vungle/publisher/fj;
.super Lcom/vungle/publisher/jn;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jn",
        "<",
        "Lcom/vungle/publisher/fj;",
        "Lcom/vungle/publisher/fe;",
        "Lcom/vungle/publisher/fk;",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
        ">;",
        "Lcom/vungle/publisher/ec;"
    }
.end annotation


# instance fields
.field v:Lcom/vungle/publisher/fj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/fe$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public x:Lcom/vungle/publisher/do;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/jn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/jn;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/fj;->x:Lcom/vungle/publisher/do;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/do;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 56
    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/fj;->v:Lcom/vungle/publisher/fj$a;

    return-object v0
.end method

.method public final a_(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/fj;->x:Lcom/vungle/publisher/do;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/do;->a(Ljava/lang/Long;)V

    .line 48
    return-void
.end method

.method public final bridge synthetic b()Lcom/vungle/publisher/cq$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/fj;->v:Lcom/vungle/publisher/fj$a;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/cp$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/fj;->w:Lcom/vungle/publisher/fe$a;

    return-object v0
.end method

.method public final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/vungle/publisher/jn;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, "download_end_millis"

    iget-object v2, p0, Lcom/vungle/publisher/fj;->o:Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 65
    return-object v0
.end method
