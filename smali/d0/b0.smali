.class public Ld0/b0;
.super Landroidx/recyclerview/widget/H0;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:LM/b;

.field public final e:LM/b;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/H0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-super {p0}, Landroidx/recyclerview/widget/H0;->a()LM/b;

    move-result-object v0

    iput-object v0, p0, Ld0/b0;->d:LM/b;

    .line 3
    new-instance v0, Ld0/a0;

    invoke-direct {v0, p0}, Ld0/a0;-><init>(Ld0/b0;)V

    iput-object v0, p0, Ld0/b0;->e:LM/b;

    .line 4
    iput-object p1, p0, Ld0/b0;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public a()LM/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ld0/b0;->e:LM/b;

    return-object p0
.end method
