.class public Lcom/android/launcher3/views/RecyclerViewFastScroller$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/views/RecyclerViewFastScroller;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->access$000(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;->get(Lcom/android/launcher3/views/RecyclerViewFastScroller;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/android/launcher3/views/RecyclerViewFastScroller;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->access$100(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller$1;->set(Lcom/android/launcher3/views/RecyclerViewFastScroller;Ljava/lang/Integer;)V

    return-void
.end method
