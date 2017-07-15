.class abstract Lcom/vungle/publisher/em$a;
.super Lcom/vungle/publisher/jp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        "V:",
        "Lcom/vungle/publisher/em",
        "<TA;TV;>;R:",
        "Lcom/vungle/publisher/ade;",
        ">",
        "Lcom/vungle/publisher/jp$a",
        "<TA;TV;TR;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/gh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/vungle/publisher/jp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/database/Cursor;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;

    .line 272
    iget-object v0, p1, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/gh;->a(Landroid/database/Cursor;)V

    .line 273
    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/vungle/publisher/em;->q()[Lcom/vungle/publisher/db;

    .line 276
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lcom/vungle/publisher/em;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/em;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;",
            "Lcom/vungle/publisher/el$b;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/em;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iput-object p3, v0, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/el$b;

    .line 266
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lcom/vungle/publisher/em;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;

    move-result-object v0

    return-object v0
.end method
