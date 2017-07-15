.class public abstract Lcom/integralads/avid/library/inmobi/session/internal/a;
.super Ljava/lang/Object;
.source "InternalAvidAdSession.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/integralads/avid/library/inmobi/session/internal/b;

.field private b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

.field private c:Lcom/integralads/avid/library/inmobi/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/inmobi/h/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/integralads/avid/library/inmobi/c/b;

.field private e:Lcom/integralads/avid/library/inmobi/session/internal/c;

.field private f:Z

.field private g:Z

.field private final h:Lcom/integralads/avid/library/inmobi/session/internal/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 6

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/b;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/SessionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->b()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralads/avid/library/inmobi/session/internal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/b;

    .line 31
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/b;

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/b;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    .line 32
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a(Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;)V

    .line 33
    new-instance v0, Lcom/integralads/avid/library/inmobi/h/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/h/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    .line 34
    invoke-virtual {p3}, Lcom/integralads/avid/library/inmobi/session/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    .line 35
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/integralads/avid/library/inmobi/c/b;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-direct {v0, p0, v1}, Lcom/integralads/avid/library/inmobi/c/b;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/a;Lcom/integralads/avid/library/inmobi/session/internal/a/a;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->d:Lcom/integralads/avid/library/inmobi/c/b;

    .line 38
    :cond_0
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/i;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/internal/i;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->h:Lcom/integralads/avid/library/inmobi/session/internal/i;

    .line 39
    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/h/b;->a(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->q()V

    .line 91
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->t()V

    .line 92
    return-void
.end method

.method public a(Lcom/integralads/avid/library/inmobi/session/internal/c;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    .line 66
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    if-eqz p1, :cond_1

    const-string v0, "active"

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void

    .line 136
    :cond_1
    const-string v0, "inactive"

    goto :goto_0
.end method

.method public abstract b()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->p()V

    .line 97
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/h/b;->a(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->r()V

    .line 99
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->t()V

    .line 101
    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 1

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->g:Z

    .line 176
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    if-eqz v0, :cond_0

    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/c;->b(Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/c;->c(Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/h/b;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()Lcom/integralads/avid/library/inmobi/c/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->d:Lcom/integralads/avid/library/inmobi/c/b;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->b()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    return v0
.end method

.method public i()Lcom/integralads/avid/library/inmobi/session/internal/a/a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    return-object v0
.end method

.method public j()Lcom/integralads/avid/library/inmobi/session/internal/i;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->h:Lcom/integralads/avid/library/inmobi/session/internal/i;

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->p()V

    .line 113
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->d:Lcom/integralads/avid/library/inmobi/c/b;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->d:Lcom/integralads/avid/library/inmobi/c/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/c/b;->a()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    .line 118
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->t()V

    .line 119
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/c;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/c;->a(Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 122
    :cond_1
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    .line 126
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->t()V

    .line 127
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->t()V

    .line 132
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->p()V

    .line 147
    return-void
.end method

.method protected p()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-static {}, Lcom/integralads/avid/library/inmobi/f/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->u()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a(Landroid/webkit/WebView;)V

    .line 165
    return-void
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 169
    :goto_0
    iget-boolean v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a;->g:Z

    if-eq v1, v0, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->b(Z)V

    .line 172
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract u()Landroid/webkit/WebView;
.end method
