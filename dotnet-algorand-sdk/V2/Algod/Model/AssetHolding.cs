/* 
 * Algod REST API.
 *
 * API endpoint for algod operations.
 *
 * OpenAPI spec version: 0.0.1
 * Contact: contact@algorand.com
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = Algorand.V2.Algod.Client.SwaggerDateConverter;

namespace Algorand.V2.Algod.Model
{
    /// <summary>
    /// Describes an asset held by an account.  Definition: data/basics/userBalance.go : AssetHolding
    /// </summary>
    [DataContract]
    public partial class AssetHolding :  IEquatable<AssetHolding>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AssetHolding" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected AssetHolding() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="AssetHolding" /> class.
        /// </summary>
        /// <param name="amount">\\[a\\] number of units held. (required).</param>
        /// <param name="assetId">Asset ID of the holding. (required).</param>
        /// <param name="creator">Address that created this asset. This is the address where the parameters for this asset can be found, and also the address where unwanted asset units can be sent in the worst case. (required).</param>
        /// <param name="isFrozen">\\[f\\] whether or not the holding is frozen. (required).</param>
        public AssetHolding(ulong? amount = default, long? assetId = default, string creator = default(string), bool? isFrozen = default(bool?))
        {
            // to ensure "amount" is required (not null)
            if (amount == null)
            {
                throw new InvalidDataException("amount is a required property for AssetHolding and cannot be null");
            }
            else
            {
                this.Amount = amount;
            }
            // to ensure "assetId" is required (not null)
            if (assetId == null)
            {
                throw new InvalidDataException("assetId is a required property for AssetHolding and cannot be null");
            }
            else
            {
                this.AssetId = assetId;
            }
            // to ensure "creator" is required (not null)
            if (creator == null)
            {
                throw new InvalidDataException("creator is a required property for AssetHolding and cannot be null");
            }
            else
            {
                this.Creator = creator;
            }
            // to ensure "isFrozen" is required (not null)
            if (isFrozen == null)
            {
                throw new InvalidDataException("isFrozen is a required property for AssetHolding and cannot be null");
            }
            else
            {
                this.IsFrozen = isFrozen;
            }
        }
        
        /// <summary>
        /// \\[a\\] number of units held.
        /// </summary>
        /// <value>\\[a\\] number of units held.</value>
        [DataMember(Name="amount", EmitDefaultValue=false)]
        public ulong? Amount { get; set; }

        /// <summary>
        /// Asset ID of the holding.
        /// </summary>
        /// <value>Asset ID of the holding.</value>
        [DataMember(Name="asset-id", EmitDefaultValue=false)]
        public long? AssetId { get; set; }

        /// <summary>
        /// Address that created this asset. This is the address where the parameters for this asset can be found, and also the address where unwanted asset units can be sent in the worst case.
        /// </summary>
        /// <value>Address that created this asset. This is the address where the parameters for this asset can be found, and also the address where unwanted asset units can be sent in the worst case.</value>
        [DataMember(Name="creator", EmitDefaultValue=false)]
        public string Creator { get; set; }

        /// <summary>
        /// \\[f\\] whether or not the holding is frozen.
        /// </summary>
        /// <value>\\[f\\] whether or not the holding is frozen.</value>
        [DataMember(Name="is-frozen", EmitDefaultValue=false)]
        public bool? IsFrozen { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class AssetHolding {\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  AssetId: ").Append(AssetId).Append("\n");
            sb.Append("  Creator: ").Append(Creator).Append("\n");
            sb.Append("  IsFrozen: ").Append(IsFrozen).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as AssetHolding);
        }

        /// <summary>
        /// Returns true if AssetHolding instances are equal
        /// </summary>
        /// <param name="input">Instance of AssetHolding to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(AssetHolding input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Amount == input.Amount ||
                    (this.Amount != null &&
                    this.Amount.Equals(input.Amount))
                ) && 
                (
                    this.AssetId == input.AssetId ||
                    (this.AssetId != null &&
                    this.AssetId.Equals(input.AssetId))
                ) && 
                (
                    this.Creator == input.Creator ||
                    (this.Creator != null &&
                    this.Creator.Equals(input.Creator))
                ) && 
                (
                    this.IsFrozen == input.IsFrozen ||
                    (this.IsFrozen != null &&
                    this.IsFrozen.Equals(input.IsFrozen))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Amount != null)
                    hashCode = hashCode * 59 + this.Amount.GetHashCode();
                if (this.AssetId != null)
                    hashCode = hashCode * 59 + this.AssetId.GetHashCode();
                if (this.Creator != null)
                    hashCode = hashCode * 59 + this.Creator.GetHashCode();
                if (this.IsFrozen != null)
                    hashCode = hashCode * 59 + this.IsFrozen.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
