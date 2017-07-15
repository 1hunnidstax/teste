.class public Lcom/integralads/avid/library/inmobi/e/a;
.super Ljava/lang/Object;
.source "AvidAdSessionRegistry.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/session/internal/c;


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/e/a;


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/integralads/avid/library/inmobi/session/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/integralads/avid/library/inmobi/session/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/integralads/avid/library/inmobi/e/b;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/integralads/avid/library/inmobi/e/a;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/e/a;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/e/a;->a:Lcom/integralads/avid/library/inmobi/e/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    return-void
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/e/a;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/inmobi/e/a;->a:Lcom/integralads/avid/library/inmobi/e/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/session/internal/a;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 71
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    return-object v0
.end method

.method public a(Lcom/integralads/avid/library/inmobi/e/b;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    .line 32
    return-void
.end method

.method public a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/session/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/session/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p2, p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a(Lcom/integralads/avid/library/inmobi/session/internal/c;)V

    .line 40
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/e/b;->a(Lcom/integralads/avid/library/inmobi/e/a;)V

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lcom/integralads/avid/library/inmobi/session/internal/a;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a(Lcom/integralads/avid/library/inmobi/session/internal/c;)V

    .line 84
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/e/b;->a(Lcom/integralads/avid/library/inmobi/e/a;)V

    .line 87
    :cond_0
    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/integralads/avid/library/inmobi/session/internal/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/integralads/avid/library/inmobi/session/internal/a;)V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    .line 92
    iget v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/e/b;->b(Lcom/integralads/avid/library/inmobi/e/a;)V

    .line 95
    :cond_0
    return-void
.end method

.method public c(Lcom/integralads/avid/library/inmobi/session/internal/a;)V
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    .line 100
    iget v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->d:Lcom/integralads/avid/library/inmobi/e/b;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/e/b;->b(Lcom/integralads/avid/library/inmobi/e/a;)V

    .line 103
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/integralads/avid/library/inmobi/e/a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
