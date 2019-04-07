using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SklepStrona.Klasy
{
    public class ElementyKoszyka : IEquatable<ElementyKoszyka>
    {

        #region Properties

        // A place to store the quantity in the cart
        // This property has an implicit getter and setter.
        public int Quantity { get; set; }

        private int _productId;
        public int ProductId
        {
            get { return _productId; }
            set
            {
                // To ensure that the Prod object will be re-created
                _product = null;
                _productId = value;
            }
        }

        private Produkt _product = null;
        public Produkt Prod
        {
            get
            {
                // Lazy initialization - the object won't be created until it is needed
                if (_product == null)
                {
                    _product = new Produkt(ProductId);
                }
                return _product;
            }
        }

        public string Nazwa
        {
            get { return Prod.Nazwa; }
        }

        public string Kolor
        {
            get { return Prod.Kolor; }
        }

        public decimal UnitPrice
        {
            get { return Prod.Cena; }
        }

        public decimal TotalPrice
        {
            get { return UnitPrice * Quantity; }
        }

        #endregion

        // CartItem constructor just needs a productId
        public ElementyKoszyka(int productId)
        {
            this.ProductId = productId;
        }

        /**
         * Equals() - Needed to implement the IEquatable interface
         *    Tests whether or not this item is equal to the parameter
         *    This method is called by the Contains() method in the List class
         *    We used this Contains() method in the ShoppingCart AddItem() method
         */
        public bool Equals(ElementyKoszyka item)
        {
            return item.ProductId == this.ProductId;
        }
    }
}
